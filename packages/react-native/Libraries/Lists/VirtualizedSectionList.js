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
import {typeof VirtualizedSectionList as VirtualizedSectionListType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof VirtualizedSectionList as VirtualizedSectionListType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

type VirtualizedSectionListType =
  typeof VirtualizedLists.VirtualizedSectionList;
const VirtualizedSectionList: VirtualizedSectionListType =
<<<<<<< HEAD
  require('@react-native-macos/virtualized-lists').VirtualizedSectionList; // [macOS]
||||||| d4407d6f77a
  require('@react-native/virtualized-lists').VirtualizedSectionList;
=======
  VirtualizedLists.VirtualizedSectionList;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

export type {
  SectionBase,
  ScrollToLocationParamsType,
<<<<<<< HEAD
} from '@react-native-macos/virtualized-lists'; // [macOS]
module.exports = VirtualizedSectionList;
||||||| d4407d6f77a
} from '@react-native/virtualized-lists';
module.exports = VirtualizedSectionList;
=======
} from '@react-native/virtualized-lists';
export default VirtualizedSectionList;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
