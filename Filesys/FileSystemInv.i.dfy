// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "FileSystem.s.dfy"

module FileSystemInv {
  import opened FileSystem
  import opened FSTypes
  import opened PathSpec

//   predicate Inv(fs: FileSys)
//   {
//     && WF(fs)
//     // DefaultId is never occupied
//     && fs.meta_map[DefaultId].EmptyMetaData?
//     && fs.data_map[DefaultId] == EmptyData()
//     // Path map internal invariant :: all valid paths must be greater than 0
//     && (forall path | PathExists(fs, path) :: |path| > 0) // all valid path must 
//     // Metadata map internal consistency: nlink consitency and directory has no hardlinks
//     && (forall path | PathExists(fs, path) :: DirImpliesHasNoAlias(fs, path))
//     // Path and meta map consistency: directory structure is connected
//     && (forall path | PathExists(fs, path) && path != RootDir :: ParentDirIsDir(fs, path))
//   }

//   lemma InitImpliesInv(fs: FileSys)
//   requires Init(fs)
//   ensures Inv(fs)
//   {
//   }

//   // TODO: add ui op
//   lemma NextPreservesInv(fs: FileSys, fs': FileSys)
//   requires Inv(fs)
//   requires Next(fs, fs')
//   ensures Inv(fs')
//   {
//     var step :| NextStep(fs, fs', step);
//     NextStepPreservesInv(fs, fs', step);
//   }

//   lemma NextStepPreservesInv(fs: FileSys, fs': FileSys, step: Step)
//   requires Inv(fs)
//   requires NextStep(fs, fs', step)
//   ensures Inv(fs')
//   {
//     match step {
//       case DeleteStep(path, ctime) => DeletePreservesInv(fs, fs', path, ctime);
//       case RenameStep(source, dest, ctime) => RenamePreservesInv(fs, fs', source, dest, ctime);
//       case LinkStep(source, dest, ctime) => LinkPreservesInv(fs, fs', source, dest, ctime); 
//       case _ => {
//         if step.CreateStep? || step.SymLinkStep? || step.ChangeAttrStep? 
//         || step.TruncateStep? || step.WriteStep? || step.UpdateTimeStep? {
//           SimpleStepPreservesInv(fs, fs', step);
//         }
//       }
//     }
//   }

//   /// Invariant proofs

//   lemma SameAliases(fs: FileSys, fs': FileSys, changedPaths: iset<Path>, changedIds: iset<int>)
//   requires Inv(fs)
//   requires WF(fs')
//   requires forall p | p in changedPaths :: fs.path_map[p] in changedIds || fs.path_map[p] == DefaultId
//   requires forall p | p in changedPaths :: fs'.path_map[p] in changedIds || fs'.path_map[p] == DefaultId
//   requires forall p | p !in changedPaths :: fs'.path_map[p] == fs.path_map[p]
//   requires forall p | p !in changedPaths :: fs'.path_map[p] !in changedIds
//   ensures forall p | PathExists(fs, p) && PathExists(fs', p) && p !in changedPaths ::
//     AliasPaths(fs, fs.path_map[p]) == AliasPaths(fs', fs'.path_map[p])
//   {
//   }

//   lemma DeletePreservesInv(fs: FileSys, fs': FileSys, path: Path, ctime: Time)
//   requires Inv(fs)
//   requires Delete(fs, fs', path, ctime)
//   ensures Inv(fs')
//   {
//     assume false;
//     forall p | PathExists(fs', p)
//     ensures DirImpliesHasNoAlias(fs', p)
//     ensures p != RootDir ==> ParentDirIsDir(fs', p)
//     {
//       assert DirImpliesHasNoAlias(fs, p); // observe
//       assert p != RootDir ==> ParentDirIsDir(fs, p); // observe
  
//       var id := fs.path_map[path];
//       if fs'.path_map[p] != id {
//         SameAliases(fs, fs', AliasPaths(fs, id), iset{id});
//       }
//     }

//     assert Inv(fs');
//   }

//   lemma RenameNonDirPreservesInv(fs: FileSys, fs': FileSys, src: Path, dst: Path, ctime: Time)
//   requires Inv(fs)
//   requires Rename(fs, fs', src, dst, ctime)
//   requires RenameNonDir(fs, fs', src, dst, ctime)
//   ensures Inv(fs')
//   {
//     assume false;
//     assert fs'.meta_map[DefaultId].EmptyMetaData?; // observe

//     forall p | PathExists(fs', p)
//     ensures DirImpliesHasNoAlias(fs', p)
//     ensures p != RootDir ==> ParentDirIsDir(fs', p)
//     {
//       var src_id := fs.path_map[src];
//       var dst_id := fs.path_map[dst];

//       if fs'.path_map[p] != src_id && fs'.path_map[p] != dst_id {
//         var changedIds := if PathExists(fs, dst) then iset{src_id, dst_id} else iset{src_id};
//         var changedPaths := iset path | fs.path_map[path] in changedIds || fs'.path_map[path] in changedIds;
//         SameAliases(fs, fs', changedPaths, changedIds);
//         assert DirImpliesHasNoAlias(fs, p);
//       }
//       assert DirImpliesHasNoAlias(fs', p);

//       if p != RootDir {
//         assert ParentDirIsDir(fs, p); // observe
//         assert ParentDirIsDir(fs', p);
//       }
//     }
//     assert Inv(fs');
//   }

//   lemma RenamedPathsRemainDifferent(src: Path, dst: Path, p1: Path, p2: Path)
//   requires p1 != p2
//   requires p1 == dst || InDir(dst, p1)
//   requires p2 == dst || InDir(dst, p2)
//   ensures src + p1[|dst|..] != src + p2[|dst|..]
//   {
//     if InDir(dst, p1) && InDir(dst, p2) {
//       assert p1[|dst|..] != p2[|dst|..];

//       var p1' := src + p1[|dst|..];
//       var p2' := src + p2[|dst|..];

//       assert p1'[..|src|] == p2'[..|src|];
//     }
//   }

//   lemma RenameDirPreservesInv(fs: FileSys, fs': FileSys, src: Path, dst: Path, ctime: Time)
//   requires Inv(fs)
//   requires Rename(fs, fs', src, dst, ctime)
//   requires RenameDir(fs, fs', src, dst, ctime)
//   ensures Inv(fs')
//   {
//     forall p | PathExists(fs', p)
//     ensures DirImpliesHasNoAlias(fs', p)
//     ensures p != RootDir ==> ParentDirIsDir(fs', p)
//     {
//       assert |p| > 0;
//       if p != RootDir {
//         var parent_dir := GetParentDir(p);
//         var parent_id := fs.path_map[parent_dir];

//         if p == dst {
//         } else if InDir(dst, p) {
//           var srcpath := src + p[|dst|..];
//           var srcparent_dir := GetParentDir(srcpath);
//           assert ParentDirIsDir(fs, srcpath);
//           assert parent_dir == dst || InDir(dst, parent_dir); // observe
//           assert src + parent_dir[|dst|..] == srcparent_dir; // observe
//         } else {
//           assert PathExists(fs, p);
//           assert ParentDirIsDir(fs, p); // observe
//           assert fs.path_map[parent_dir] == fs'.path_map[parent_dir];
//         }
//         assert ParentDirIsDir(fs', p);
//       }

//       var id := fs'.path_map[p];
//       var m := fs'.meta_map[id];
//       var aliases := AliasPaths(fs', id);

//       if (exists path | path in aliases :: path == dst || InDir(dst, path)) {
//         // this covers cases for dst prefixes and old src's aliases
//         if m.ftype.Directory? && !NoAlias(fs', p) {
//           var path :| path in aliases && (path == dst || InDir(dst, path));
//           var aliaspath :| aliaspath in aliases && aliaspath != path;
//           assert path != aliaspath;

//           var srcpath := src + path[|dst|..];
//           assert id == fs.path_map[srcpath];
//           assert DirImpliesHasNoAlias(fs, srcpath); // observe

//           if aliaspath == dst || InDir(dst, aliaspath) {
//             var srcalias := src + aliaspath[|dst|..];
//             assert fs.path_map[srcalias] == fs'.path_map[aliaspath];
//             RenamedPathsRemainDifferent(src, dst, path, aliaspath);
//             assert srcalias != srcpath;
//             assert false;
//           } else {
//             assert fs.path_map[aliaspath] == fs'.path_map[aliaspath]; 
//             assert false;
//           }
//         }
//       } else {
//         assert DirImpliesHasNoAlias(fs, p); // observe
//         assert DirImpliesHasNoAlias(fs', p);
//       }
//     }
  
//     assert Inv(fs');
//   }

//   lemma RenamePreservesInv(fs: FileSys, fs': FileSys, source: Path, dest: Path, ctime: Time)
//   requires Inv(fs)
//   requires Rename(fs, fs', source, dest, ctime)
//   ensures Inv(fs')
//   {
//     var m := fs.meta_map[fs.path_map[source]];
//     if m.ftype.Directory? {
//       RenameDirPreservesInv(fs, fs', source, dest, ctime);
//     } else {
//       RenameNonDirPreservesInv(fs, fs', source, dest, ctime);
//     }
//   }

//   lemma LinkPreservesInv(fs: FileSys, fs': FileSys, source: Path, dest: Path, ctime: Time)
//   requires Inv(fs)
//   requires Link(fs, fs', source, dest, ctime)
//   ensures Inv(fs')
//   {
//     forall p | PathExists(fs', p)
//     ensures DirImpliesHasNoAlias(fs', p)
//     ensures p != RootDir ==> ParentDirIsDir(fs', p)
//     {
//       assert p != dest ==> DirImpliesHasNoAlias(fs, p); // observe
//       assert p != RootDir ==> ParentDirIsDir(fs, p); // observe

//       var id := fs.path_map[source];
//       if fs'.path_map[p] != id {
//         SameAliases(fs, fs', AliasPaths(fs', id), iset{id});
//       }
//     }

//     assert Inv(fs');
//   }

//   lemma SimpleStepPreservesInv(fs: FileSys, fs': FileSys, step: Step)
//   requires Inv(fs)
//   requires NextStep(fs, fs', step)
//   requires step.CreateStep? || step.SymLinkStep? || step.ChangeAttrStep?
//         || step.TruncateStep? || step.WriteStep? || step.UpdateTimeStep?
//   ensures Inv(fs')
//   {
//     var path := if step.SymLinkStep? then step.dest else step.path;

//     forall p | PathExists(fs', p)
//     ensures DirImpliesHasNoAlias(fs', p)
//     ensures p != RootDir ==> ParentDirIsDir(fs', p)
//     {
//       if p != path {
//         assert PathExists(fs, p); // observe
//         assert DirImpliesHasNoAlias(fs, p); // observe

//         if step.SymLinkStep? || step.CreateStep? {
//           SameAliases(fs, fs', iset{path}, iset{fs'.path_map[path]});
//         }
//       }
//     }

//     assert Inv(fs');
//   }
}
