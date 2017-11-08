// RUN: %target-typecheck-verify-swift %s

func flatMapOnSequence<
  S : Sequence
>(xs: S, f: (S.Element) -> S.Element?) {
  _ = xs.flatMap(f) // expected-warning {{deprecated}} expected-note {{filterMap}}
}

func flatMapOnLazySequence<
  S : LazySequenceProtocol
>(xs: S, f: (S.Element) -> S.Element?) {
  _ = xs.flatMap(f) // expected-warning {{deprecated}} expected-note {{filterMap}}
}

func flatMapOnLazyCollection<
  C : LazyCollectionProtocol
>(xs: C, f: (C.Element) -> C.Element?) {
  _ = xs.flatMap(f) // expected-warning {{deprecated}} expected-note {{filterMap}}
}

func flatMapOnLazyBidirectionalCollection<
  C : LazyCollectionProtocol & BidirectionalCollection
>(xs: C, f: (C.Element) -> C.Element?)
where C.Elements : BidirectionalCollection {
  _ = xs.flatMap(f) // expected-warning {{deprecated}} expected-note {{filterMap}}
}

func flatMapOnCollectinoOfStrings<
  C : Collection
>(xs: C, f: (C.Element) -> String?) {
  _ = xs.flatMap(f) // expected-warning {{deprecated}} expected-note {{filterMap}}
}
