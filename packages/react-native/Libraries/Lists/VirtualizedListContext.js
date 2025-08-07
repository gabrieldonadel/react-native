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
import {typeof VirtualizedListContextResetter as VirtualizedListContextResetterType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof VirtualizedListContextResetter as VirtualizedListContextResetterType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

<<<<<<< HEAD
const VirtualizedListContextResetter: VirtualizedListContextResetterType =
  require('@react-native-macos/virtualized-lists').VirtualizedListContextResetter; // [macOS]

module.exports = {VirtualizedListContextResetter};
||||||| d4407d6f77a
const VirtualizedListContextResetter: VirtualizedListContextResetterType =
  require('@react-native/virtualized-lists').VirtualizedListContextResetter;

module.exports = {VirtualizedListContextResetter};
=======
type VirtualizedListContextResetterType =
  typeof VirtualizedLists.VirtualizedListContextResetter;
export const VirtualizedListContextResetter: VirtualizedListContextResetterType =
  VirtualizedLists.VirtualizedListContextResetter;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
