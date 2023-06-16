//===- ModuleLoader.cpp -----------------------------------------*- C++ -*-===//
//
//  Copyright (C) 2020 GrammaTech, Inc.
//
//  This code is licensed under the GNU Affero General Public License
//  as published by the Free Software Foundation, either version 3 of
//  the License, or (at your option) any later version. See the
//  LICENSE.txt file in the project root for license terms or visit
//  https://www.gnu.org/licenses/agpl.txt.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU Affero General Public License for more details.
//
//  This project is sponsored by the Office of Naval Research, One Liberty
//  Center, 875 N. Randolph Street, Arlington, VA 22203 under contract #
//  N68335-17-C-0700.  The content of the information does not necessarily
//  reflect the position or policy of the Government and no official
//  endorsement should be inferred.
//
//===----------------------------------------------------------------------===//
#include "ModuleLoader.h"

#include "../../AuxDataSchema.h"
#include "../Relations.h"

void ModuleLoader(const gtirb::Module& Module, souffle::SouffleProgram& Program)
{
    // Binary file format.
    std::string BinaryFormat = binaryFormat(Module.getFileFormat());

    // Base address.
    gtirb::Addr BaseAddress = Module.getPreferredAddr();

    // Binary entry point.
    gtirb::Addr EntryPoint;
    if(const gtirb::CodeBlock* Block = Module.getEntryPoint())
    {
        if(std::optional<gtirb::Addr> Addr = Block->getAddress())
        {
            EntryPoint = *Addr;
        }
    }

    // Binary endianness.
    std::string Endianness = binaryEndianness(Module.getByteOrder());

    // Binary object type.
    std::string BinaryType;
    if(auto AuxData = Module.getAuxData<gtirb::schema::BinaryType>())
    {
        if(!AuxData->empty())
        {
            BinaryType = AuxData->front();
        }
    }
    else
    {
        // If no information is available for binary type,
        // set it to EXEC by default.
        BinaryType = "EXEC";
    }

    relations::insert<std::vector<std::string>>(Program, "binary_type", {BinaryType});
    relations::insert<std::vector<std::string>>(Program, "binary_format", {BinaryFormat});
    relations::insert<std::vector<gtirb::Addr>>(Program, "base_address", {BaseAddress});
    relations::insert<std::vector<gtirb::Addr>>(Program, "entry_point", {EntryPoint});
    relations::insert<std::vector<std::string>>(Program, "endianness", {Endianness});
}

const char* binaryFormat(const gtirb::FileFormat Format)
{
    switch(Format)
    {
        case gtirb::FileFormat::COFF:
            return "COFF";
        case gtirb::FileFormat::ELF:
            return "ELF";
        case gtirb::FileFormat::PE:
            return "PE";
        case gtirb::FileFormat::IdaProDb32:
            return "IdaProDb32";
        case gtirb::FileFormat::IdaProDb64:
            return "IdaProDb64";
        case gtirb::FileFormat::XCOFF:
            return "XCOFF";
        case gtirb::FileFormat::MACHO:
            return "MACHO";
        case gtirb::FileFormat::RAW:
            return "RAW";
        case gtirb::FileFormat::Undefined:
        default:
            return "Undefined";
    }
}

const char* binaryISA(gtirb::ISA Arch)
{
    switch(Arch)
    {
        case gtirb::ISA::IA32:
            return "X86";
        case gtirb::ISA::X64:
            return "X64";
        case gtirb::ISA::ARM:
            return "ARM";
        case gtirb::ISA::ARM64:
            return "ARM64";
        case gtirb::ISA::MIPS32:
        case gtirb::ISA::MIPS64:
            return "MIPS";
        default:
            return "Undefined";
    }
}

const char* binaryEndianness(const gtirb::ByteOrder ByteOrder)
{
    switch(ByteOrder)
    {
        case gtirb::ByteOrder::Big:
            return "BE";
        case gtirb::ByteOrder::Little:
            return "LE";
        case gtirb::ByteOrder::Undefined:
        default:
            return "Undefined";
    }
}
