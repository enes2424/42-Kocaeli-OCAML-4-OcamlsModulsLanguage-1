#use "Color.ml"

let () =
  let rec test list =
    match list with
    | [] -> ()
    | head :: tail ->
      print_endline ((toString head) ^ " -> " ^ (toStringVerbose head));
      test tail
  in test all 