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

export type {
  ViewToken,
  ViewabilityConfig,
  ViewabilityConfigCallbackPair,
} from '@react-native-macos/virtualized-lists'; // [macOS]

<<<<<<< HEAD
import {typeof ViewabilityHelper as ViewabilityHelperType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof ViewabilityHelper as ViewabilityHelperType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

type ViewabilityHelperType = typeof VirtualizedLists.ViewabilityHelper;
const ViewabilityHelper: ViewabilityHelperType =
<<<<<<< HEAD
  require('@react-native-macos/virtualized-lists').ViewabilityHelper; // [macOS]
||||||| d4407d6f77a
  require('@react-native/virtualized-lists').ViewabilityHelper;
=======
  VirtualizedLists.ViewabilityHelper;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

export default ViewabilityHelper;
