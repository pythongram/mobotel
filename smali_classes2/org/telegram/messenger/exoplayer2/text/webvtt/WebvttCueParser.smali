.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;,
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .registers 5
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 320
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_7c

    .line 334
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unsupported entity: \'&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_29
    return-void

    .line 320
    :sswitch_2a
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_34
    const-string v1, "gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_3e
    const-string v1, "nbsp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_48
    const-string v1, "amp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    .line 322
    :pswitch_52
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_29

    .line 325
    :pswitch_58
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_29

    .line 328
    :pswitch_5e
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_29

    .line 331
    :pswitch_64
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_29

    .line 320
    :sswitch_data_6a
    .sparse-switch
        0xced -> :sswitch_34
        0xd88 -> :sswitch_2a
        0x179c4 -> :sswitch_48
        0x337f11 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_58
        :pswitch_5e
        :pswitch_64
    .end packed-switch
.end method

.method private static applySpansForTag(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .param p0, "cueId"    # Ljava/lang/String;
    .param p1, "startTag"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .param p2, "text"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local p4, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v9, 0x21

    .line 355
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 356
    .local v2, "start":I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 357
    .local v0, "end":I
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_94

    :cond_14
    :goto_14
    packed-switch v4, :pswitch_data_b2

    .line 383
    :cond_17
    return-void

    .line 357
    :sswitch_18
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v4, 0x0

    goto :goto_14

    :sswitch_22
    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    move v4, v5

    goto :goto_14

    :sswitch_2c
    const-string v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    move v4, v6

    goto :goto_14

    :sswitch_36
    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v4, 0x3

    goto :goto_14

    :sswitch_40
    const-string v8, "lang"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v4, 0x4

    goto :goto_14

    :sswitch_4a
    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v4, 0x5

    goto :goto_14

    :sswitch_54
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v4, 0x6

    goto :goto_14

    .line 359
    :pswitch_5e
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 377
    :goto_66
    :pswitch_66
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 378
    invoke-static {p3, p0, p1, p4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V

    .line 379
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    .line 380
    .local v3, "styleMatchesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    if-ge v1, v3, :cond_17

    .line 381
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-static {p2, v4, v2, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;II)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 363
    .end local v1    # "i":I
    .end local v3    # "styleMatchesCount":I
    :pswitch_81
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_66

    .line 367
    :pswitch_8a
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v4, v2, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_66

    .line 357
    nop

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_54
        0x62 -> :sswitch_18
        0x63 -> :sswitch_36
        0x69 -> :sswitch_22
        0x75 -> :sswitch_2c
        0x76 -> :sswitch_4a
        0x3291ee -> :sswitch_40
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_81
        :pswitch_8a
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;II)V
    .registers 8
    .param p0, "spannedText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v3, 0x21

    .line 387
    if-nez p1, :cond_5

    .line 433
    :goto_4
    return-void

    .line 390
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 391
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 394
    :cond_18
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 395
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 397
    :cond_26
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 398
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 400
    :cond_34
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 401
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 404
    :cond_46
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 405
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 408
    :cond_58
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 409
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 412
    :cond_6a
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 413
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 416
    :cond_7c
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    goto :goto_4

    .line 418
    :pswitch_84
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 422
    :pswitch_94
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 426
    :pswitch_a2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 416
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_84
        :pswitch_94
        :pswitch_a2
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .registers 4
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .prologue
    .line 315
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 316
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_d
    return v1

    :cond_e
    add-int/lit8 v1, v0, 0x1

    goto :goto_d
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local p3, "output":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 452
    .local v3, "styleCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_24

    .line 453
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 454
    .local v2, "style":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    iget-object v6, p2, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "score":I
    if-lez v1, :cond_21

    .line 456
    new-instance v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v1, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 459
    .end local v1    # "score":I
    .end local v2    # "style":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    :cond_24
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 460
    return-void
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tagExpression"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_b
    return-object v0

    :cond_c
    const-string v0, "[ \\.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 5
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4c

    :cond_a
    :goto_a
    packed-switch v2, :pswitch_data_66

    move v0, v1

    .line 349
    :pswitch_e
    return v0

    .line 340
    :sswitch_f
    const-string v3, "b"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v2, v1

    goto :goto_a

    :sswitch_19
    const-string v3, "c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v2, v0

    goto :goto_a

    :sswitch_23
    const-string v3, "i"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x2

    goto :goto_a

    :sswitch_2d
    const-string v3, "lang"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x3

    goto :goto_a

    :sswitch_37
    const-string v3, "u"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x4

    goto :goto_a

    :sswitch_41
    const-string v3, "v"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x5

    goto :goto_a

    nop

    :sswitch_data_4c
    .sparse-switch
        0x62 -> :sswitch_f
        0x63 -> :sswitch_19
        0x69 -> :sswitch_23
        0x75 -> :sswitch_37
        0x76 -> :sswitch_41
        0x3291ee -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .registers 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "cueHeaderMatcher"    # Ljava/util/regex/Matcher;
    .param p2, "webvttData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p3, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .param p4, "textBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setStartTime(J)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 224
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setEndTime(J)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_1b} :catch_45

    .line 230
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    .line 233
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    :goto_26
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_64

    .line 236
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 237
    const-string v3, "\n"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 225
    .end local v1    # "line":Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WebvttCueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping cue with bad header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 242
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_63
    return v2

    .line 241
    .restart local v1    # "line":Ljava/lang/String;
    :cond_64
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3, p5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    goto :goto_63
.end method

.method static parseCueSettingsList(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .registers 9
    .param p0, "cueSettingsList"    # Ljava/lang/String;
    .param p1, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .prologue
    .line 120
    sget-object v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    .local v0, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "value":Ljava/lang/String;
    :try_start_16
    const-string v4, "line"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 126
    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_6

    .line 136
    :catch_22
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 127
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_40
    :try_start_40
    const-string v4, "align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 128
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_6

    .line 129
    :cond_50
    const-string v4, "position"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 130
    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_6

    .line 131
    :cond_5c
    const-string v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 132
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setWidth(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_6

    .line 134
    :cond_6c
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cue setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_8e} :catch_22

    goto/16 :goto_6

    .line 140
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_90
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V
    .registers 23
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 153
    .local v13, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 154
    .local v15, "startTagStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v10, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v9, 0x0

    .line 156
    .local v9, "pos":I
    :cond_10
    :goto_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_122

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 158
    .local v3, "curr":C
    sparse-switch v3, :sswitch_data_14c

    .line 205
    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 206
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 160
    :sswitch_27
    add-int/lit8 v17, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_36

    .line 161
    add-int/lit8 v9, v9, 0x1

    .line 162
    goto :goto_10

    .line 164
    :cond_36
    move v8, v9

    .line 165
    .local v8, "ltPos":I
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ac

    const/4 v6, 0x1

    .line 166
    .local v6, "isClosingTag":Z
    :goto_4a
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v9

    .line 167
    add-int/lit8 v17, v9, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ae

    const/4 v7, 0x1

    .line 168
    .local v7, "isVoidTag":Z
    :goto_67
    if-eqz v6, :cond_b0

    const/16 v17, 0x2

    :goto_6b
    add-int v18, v8, v17

    if-eqz v7, :cond_b3

    add-int/lit8 v17, v9, -0x2

    :goto_71
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "fullTagExpression":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, "tagName":Ljava/lang/String;
    if-eqz v16, :cond_10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 174
    if-eqz v6, :cond_b6

    .line 177
    :cond_89
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    .line 180
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 181
    .local v14, "startTag":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v14, v13, v1, v10}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 182
    iget-object v0, v14, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_89

    goto/16 :goto_10

    .line 165
    .end local v5    # "fullTagExpression":Ljava/lang/String;
    .end local v6    # "isClosingTag":Z
    .end local v7    # "isVoidTag":Z
    .end local v14    # "startTag":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_ac
    const/4 v6, 0x0

    goto :goto_4a

    .line 167
    .restart local v6    # "isClosingTag":Z
    :cond_ae
    const/4 v7, 0x0

    goto :goto_67

    .line 168
    .restart local v7    # "isVoidTag":Z
    :cond_b0
    const/16 v17, 0x1

    goto :goto_6b

    :cond_b3
    add-int/lit8 v17, v9, -0x1

    goto :goto_71

    .line 183
    .restart local v5    # "fullTagExpression":Ljava/lang/String;
    .restart local v16    # "tagName":Ljava/lang/String;
    :cond_b6
    if-nez v7, :cond_10

    .line 184
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 188
    .end local v5    # "fullTagExpression":Ljava/lang/String;
    .end local v6    # "isClosingTag":Z
    .end local v7    # "isVoidTag":Z
    .end local v8    # "ltPos":I
    .end local v16    # "tagName":Ljava/lang/String;
    :sswitch_c9
    const/16 v17, 0x3b

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 189
    .local v11, "semiColonEndIndex":I
    const/16 v17, 0x20

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 190
    .local v12, "spaceEndIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_10e

    move v4, v12

    .line 193
    .local v4, "entityEndIndex":I
    :goto_ec
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_11b

    .line 194
    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 195
    if-ne v4, v12, :cond_10a

    .line 196
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    :cond_10a
    add-int/lit8 v9, v4, 0x1

    goto/16 :goto_10

    .line 190
    .end local v4    # "entityEndIndex":I
    :cond_10e
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_116

    move v4, v11

    goto :goto_ec

    .line 192
    :cond_116
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_ec

    .line 200
    .restart local v4    # "entityEndIndex":I
    :cond_11b
    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 203
    goto/16 :goto_10

    .line 211
    .end local v3    # "curr":C
    .end local v4    # "entityEndIndex":I
    .end local v11    # "semiColonEndIndex":I
    .end local v12    # "spaceEndIndex":I
    :cond_122
    :goto_122
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_138

    .line 212
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v10}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_122

    .line 214
    :cond_138
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v13, v2, v10}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 216
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setText(Landroid/text/SpannableStringBuilder;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 217
    return-void

    .line 158
    nop

    :sswitch_data_14c
    .sparse-switch
        0x26 -> :sswitch_c9
        0x3c -> :sswitch_27
    .end sparse-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 249
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 250
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    .line 251
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 252
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 256
    :goto_1b
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 257
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 261
    :goto_2e
    return-void

    .line 254
    :cond_2f
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1b

    .line 259
    :cond_35
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_2e
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_56

    :cond_b
    :goto_b
    packed-switch v3, :pswitch_data_68

    .line 285
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid anchor value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/high16 v0, -0x80000000

    :goto_28
    :pswitch_28
    return v0

    .line 276
    :sswitch_29
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v0

    goto :goto_b

    :sswitch_33
    const-string v4, "center"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v1

    goto :goto_b

    :sswitch_3d
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v2

    goto :goto_b

    :sswitch_47
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v3, 0x3

    goto :goto_b

    :pswitch_51
    move v0, v1

    .line 281
    goto :goto_28

    :pswitch_53
    move v0, v2

    .line 283
    goto :goto_28

    .line 276
    nop

    :sswitch_data_56
    .sparse-switch
        -0x514d33ab -> :sswitch_33
        -0x4009266b -> :sswitch_3d
        0x188db -> :sswitch_47
        0x68ac462 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_28
        :pswitch_51
        :pswitch_51
        :pswitch_53
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 265
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 266
    .local v0, "commaIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 267
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 268
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 272
    :goto_1b
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setPosition(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 273
    return-void

    .line 270
    :cond_23
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1b
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_84

    .line 302
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    :goto_24
    return-object v0

    .line 291
    :sswitch_25
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2f
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_39
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_43
    const-string v1, "middle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_4d
    const-string v1, "end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_57
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    .line 294
    :pswitch_61
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_24

    .line 297
    :pswitch_64
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_24

    .line 300
    :pswitch_67
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_24

    .line 291
    :sswitch_data_6a
    .sparse-switch
        -0x514d33ab -> :sswitch_39
        -0x4009266b -> :sswitch_43
        0x188db -> :sswitch_4d
        0x32a007 -> :sswitch_2f
        0x677c21c -> :sswitch_57
        0x68ac462 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_64
        :pswitch_64
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method parseCue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z
    .registers 12
    .param p1, "webvttData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "firstLine":Ljava/lang/String;
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 95
    .local v1, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 97
    const/4 v0, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    .line 108
    :goto_1a
    return v0

    .line 100
    :cond_1b
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "secondLine":Ljava/lang/String;
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    goto :goto_1a

    .line 108
    :cond_39
    const/4 v0, 0x0

    goto :goto_1a
.end method
