.class Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchingParser"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/DateTimeParser;


# direct methods
.method constructor <init>([Lorg/joda/time/format/DateTimeParser;)V
    .registers 5

    .prologue
    .line 2746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2747
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2748
    const/4 v1, 0x0

    .line 2749
    array-length v0, p1

    :goto_7
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_18

    .line 2750
    aget-object v0, p1, v2

    .line 2751
    if-eqz v0, :cond_1b

    .line 2752
    invoke-interface {v0}, Lorg/joda/time/format/DateTimeParser;->estimateParsedLength()I

    move-result v0

    .line 2753
    if-le v0, v1, :cond_1b

    :goto_15
    move v1, v0

    move v0, v2

    .line 2757
    goto :goto_7

    .line 2758
    :cond_18
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    .line 2759
    return-void

    :cond_1b
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .prologue
    .line 2762
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 2766
    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2767
    array-length v8, v7

    .line 2769
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v9

    .line 2773
    const/4 v2, 0x0

    move v6, v5

    move v0, p3

    move v4, p3

    .line 2777
    :goto_c
    if-ge v6, v8, :cond_5b

    .line 2778
    aget-object v1, v7, v6

    .line 2779
    if-nez v1, :cond_23

    .line 2781
    if-gt v4, p3, :cond_15

    .line 2819
    :goto_14
    return p3

    .line 2784
    :cond_15
    const/4 v1, 0x1

    .line 2811
    :goto_16
    if-gt v4, p3, :cond_1c

    if-ne v4, p3, :cond_55

    if-eqz v1, :cond_55

    .line 2813
    :cond_1c
    if-eqz v2, :cond_21

    .line 2814
    invoke-virtual {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    :cond_21
    move p3, v4

    .line 2816
    goto :goto_14

    .line 2787
    :cond_23
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/DateTimeParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result v3

    .line 2788
    if-lt v3, p3, :cond_4b

    .line 2789
    if-le v3, v4, :cond_58

    .line 2790
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_3b

    add-int/lit8 v1, v6, 0x1

    if-ge v1, v8, :cond_3b

    add-int/lit8 v1, v6, 0x1

    aget-object v1, v7, v1

    if-nez v1, :cond_3d

    :cond_3b
    move p3, v3

    .line 2795
    goto :goto_14

    .line 2798
    :cond_3d
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    .line 2808
    :goto_42
    invoke-virtual {p1, v9}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    .line 2777
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move-object v2, v1

    goto :goto_c

    .line 2801
    :cond_4b
    if-gez v3, :cond_58

    .line 2802
    xor-int/lit8 v1, v3, -0x1

    .line 2803
    if-le v1, v0, :cond_58

    move v0, v1

    move-object v1, v2

    move v2, v4

    .line 2804
    goto :goto_42

    .line 2819
    :cond_55
    xor-int/lit8 p3, v0, -0x1

    goto :goto_14

    :cond_58
    move-object v1, v2

    move v2, v4

    goto :goto_42

    :cond_5b
    move v1, v5

    goto :goto_16
.end method
