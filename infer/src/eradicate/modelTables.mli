(*
 * Copyright (c) 2015 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open Utils

type model_table_t = (string, bool * bool list) Hashtbl.t

(** Location of this file. *)
val ml_location : ml_location

val annotated_table_nullable : model_table_t
val annotated_table_present : model_table_t
val annotated_table_strict : model_table_t
val check_not_null_table : model_table_t
val check_not_null_parameter_table : (string, int) Hashtbl.t
val check_state_table : model_table_t
val check_argument_table : model_table_t
val containsKey_table : model_table_t
val mapPut_table : model_table_t
val optional_get_table : model_table_t
val optional_isPresent_table : model_table_t
val true_on_null_table : model_table_t
