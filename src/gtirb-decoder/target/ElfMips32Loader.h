//===- ElfMips32Loader.h ----------------------------------------*- C++ -*-===//
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
#ifndef SRC_GTIRB_DECODER_TARGET_ELFMIPS32LOADER_H_
#define SRC_GTIRB_DECODER_TARGET_ELFMIPS32LOADER_H_

#include "../CompositeLoader.h"
#include "../arch/Mips32Loader.h"
#include "../core/DataLoader.h"
#include "../core/ModuleLoader.h"
#include "../core/SectionLoader.h"
#include "../format/ElfLoader.h"

CompositeLoader ElfMips32BELoader()
{
    CompositeLoader Loader("souffle_disasm_mips32");
    Loader.add(ModuleLoader);
    Loader.add(SectionLoader);
    Loader.add<Mips32Loader>(Mips32Loader::Endian::BIG);
    Loader.add<DataLoader>(DataLoader::Pointer::DWORD, DataLoader::Endian::BIG);
    Loader.add(ElfDynamicEntryLoader);
    Loader.add(ElfSymbolLoader);
    Loader.add(ElfExceptionLoader);
    return Loader;
}

CompositeLoader ElfMips32LELoader()
{
    CompositeLoader Loader("souffle_disasm_mips32");
    Loader.add(ModuleLoader);
    Loader.add(SectionLoader);
    Loader.add<Mips32Loader>(Mips32Loader::Endian::LITTLE);
    Loader.add<DataLoader>(DataLoader::Pointer::DWORD, DataLoader::Endian::LITTLE);
    Loader.add(ElfDynamicEntryLoader);
    Loader.add(ElfSymbolLoader);
    Loader.add(ElfExceptionLoader);
    return Loader;
}

#endif // SRC_GTIRB_DECODER_TARGET_ELFMIPS32LOADER_H_
