/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict-local
 * @format
 */

'use strict';

<<<<<<< HEAD
import {typeof VirtualizedList as VirtualizedListType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof VirtualizedList as VirtualizedListType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

<<<<<<< HEAD
const VirtualizedList: VirtualizedListType =
  require('@react-native-macos/virtualized-lists').VirtualizedList; // [macOS]
||||||| d4407d6f77a
const VirtualizedList: VirtualizedListType =
  require('@react-native/virtualized-lists').VirtualizedList;
=======
type VirtualizedListType = typeof VirtualizedLists.VirtualizedList;
const VirtualizedList: VirtualizedListType = VirtualizedLists.VirtualizedList;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

export type {
  ListRenderItemInfo,
  ListRenderItem,
  Separators,
<<<<<<< HEAD
} from '@react-native-macos/virtualized-lists'; // [macOS]
module.exports = VirtualizedList;
||||||| d4407d6f77a
} from '@react-native/virtualized-lists';
module.exports = VirtualizedList;
=======
} from '@react-native/virtualized-lists';
export default VirtualizedList;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
