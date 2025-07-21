#use "Value.ml"

let () =
  let rec test list =
    match list with
    | [] -> ()
    | head :: tail ->
      print_int (toInt head);
      print_endline (" -> \"" ^ (toString head) ^ "\" -> \"" ^ (toStringVerbose head) ^ "\"");
      test tail
  in test all;
  print_endline "----------------------------------------------------";
  let rec test value =
    print_int (toInt value);
    print_endline (" -> \"" ^ (toString value) ^ "\" -> \"" ^ (toStringVerbose value) ^ "\"");
    test (next value)
  in try 
    test T2
  with
  | Invalid_argument msg ->
      print_endline ("Invalid_argument: " ^ msg);
  ;
  print_endline "----------------------------------------------------";
  let rec test value =
    print_int (toInt value);
    print_endline (" -> \"" ^ (toString value) ^ "\" -> \"" ^ (toStringVerbose value) ^ "\"");
    test (previous value)
  in try 
    test As
  with
  | Invalid_argument msg ->
      print_endline ("Invalid_argument: " ^ msg);
  ;