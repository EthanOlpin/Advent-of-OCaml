open Core

let ints_of_string s =
  let re = Re.Perl.compile_pat {|-?\d+|} in
  Re.matches re s |> List.map ~f:Int.of_string
;;

let digits_of_string s =
  let re = Re.Perl.compile_pat {|\d|} in
  Re.matches re s |> List.map ~f:Int.of_string
;;

let chars_of_string s = String.to_list s

let split_double_newline s =
  let re = Re.Perl.compile_pat {|(\n\n)|} in
  Re.split re s
;;