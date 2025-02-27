#include <gtest/gtest.h>
#include "word_counter.h"

TEST(WordCounterTest, EmptyString) {
    EXPECT_EQ(countWords(""), 0);
}

TEST(WordCounterTest, SingleWord) {
    EXPECT_EQ(countWords("Hello"), 1);
}

TEST(WordCounterTest, MultipleWords) {
    EXPECT_EQ(countWords("Hello world!"), 2);
}

TEST(WordCounterTest, ExtraSpaces) {
    EXPECT_EQ(countWords("  This  is   a test   "), 5);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
