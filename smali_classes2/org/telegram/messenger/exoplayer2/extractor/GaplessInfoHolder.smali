.class public final Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 50
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 51
    return-void
.end method

.method private setFromComment(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const-string v5, "iTunSMPB"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 115
    :cond_a
    :goto_a
    return v3

    .line 101
    :cond_b
    sget-object v5, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 104
    const/4 v5, 0x1

    :try_start_18
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "encoderDelay":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_31

    if-lez v1, :cond_a

    .line 107
    :cond_31
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 108
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_35} :catch_37

    move v3, v4

    .line 109
    goto :goto_a

    .line 111
    .end local v0    # "encoderDelay":I
    .end local v1    # "encoderPadding":I
    :catch_37
    move-exception v4

    goto :goto_a
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 122
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z
    .registers 7
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 78
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;->get(I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 79
    .local v1, "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    instance-of v3, v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v3, :cond_1e

    move-object v0, v1

    .line 80
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    .line 81
    .local v0, "commentFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 82
    const/4 v3, 0x1

    .line 86
    .end local v0    # "commentFrame":Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .end local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :goto_1d
    return v3

    .line 77
    .restart local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_21
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public setFromXingHeaderValue(I)Z
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 60
    shr-int/lit8 v0, p1, 0xc

    .line 61
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 62
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_8

    if-lez v1, :cond_e

    .line 63
    :cond_8
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 64
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 65
    const/4 v2, 0x1

    .line 67
    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method
