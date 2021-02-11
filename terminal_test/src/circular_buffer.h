// Source:
// https://github.com/embeddedartistry/embedded-resources/blob/master/examples/cpp/circular_buffer.cpp

#ifndef __CIRC_H__
#define __CIRC_H__

#include <Arduino.h>

#include <memory>

template <class T>
class circular_buffer {
 public:
 circular_buffer(size_t size) :
  buf_(std::unique_ptr<T[]>(new T[size])),
    size_(size) {
      //empty constructor
    }

  void put(T item) {
    buf_[head_] = item;
    head_ = (head_ + 1) % size_;

    if(head_ == tail_) {
      tail_ = (tail_ + 1) % size_;
    }
  }

  T get(void) {
    if(empty()) {
      return T();
    }

    //Read data and advance the tail (we now have a free space)
    auto val = buf_[tail_];
    tail_ = (tail_ + 1) % size_;

    return val;
  }

  void reset(void) {
    head_ = tail_;
  }

  bool empty(void) {
    //if head and tail are equal, we are empty
    return head_ == tail_;
  }

  bool full(void) {
    //If tail is ahead the head by 1, we are full
    return ((head_ + 1) % size_) == tail_;
  }

  size_t size(void) {
    return size_ - 1;
  }

 private:
  std::unique_ptr<T[]> buf_;
  size_t head_ = 0;
  size_t tail_ = 0;
  size_t size_;
};

#endif
