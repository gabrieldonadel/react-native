/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict-local
 * @format
 */

import type {Int32} from '../../Types/CodegenTypes';

import * as React from 'react';

export interface TextInputNativeCommands<T> {
  +focus: (viewRef: React.ElementRef<T>) => void;
  +blur: (viewRef: React.ElementRef<T>) => void;
  +setTextAndSelection: (
    viewRef: React.ElementRef<T>,
    mostRecentEventCount: Int32,
    value: ?string, // in theory this is nullable
    start: Int32,
    end: Int32,
  ) => void;
  // [macOS
  // NYI on Android
  +setGhostText: (
    viewRef: React.ElementRef<T>,
    value: ?string, // in theory this is nullable
  ) => void;
  // macOS]
}

<<<<<<< HEAD
const supportedCommands = [
  'focus',
  'blur',
  'setTextAndSelection',
  'setGhostText',
]; // [macOS]
||||||| d4407d6f77a
const supportedCommands = ['focus', 'blur', 'setTextAndSelection'];
=======
const supportedCommands = ['focus', 'blur', 'setTextAndSelection'] as string[];
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

export default supportedCommands;
