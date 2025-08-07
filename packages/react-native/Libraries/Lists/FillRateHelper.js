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
import {typeof FillRateHelper as FillRateHelperType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof FillRateHelper as FillRateHelperType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

<<<<<<< HEAD
const FillRateHelper: FillRateHelperType =
  require('@react-native-macos/virtualized-lists').FillRateHelper; // [macOS]
||||||| d4407d6f77a
const FillRateHelper: FillRateHelperType =
  require('@react-native/virtualized-lists').FillRateHelper;
=======
type FillRateHelperType = typeof VirtualizedLists.FillRateHelper;
const FillRateHelper: FillRateHelperType = VirtualizedLists.FillRateHelper;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

<<<<<<< HEAD
export type {FillRateInfo} from '@react-native-macos/virtualized-lists'; // [macOS]
module.exports = FillRateHelper;
||||||| d4407d6f77a
export type {FillRateInfo} from '@react-native/virtualized-lists';
module.exports = FillRateHelper;
=======
export type {FillRateInfo} from '@react-native/virtualized-lists';
export default FillRateHelper;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
