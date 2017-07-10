.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$EmojiSpan;,
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static bigImgSize:I = 0x0

.field private static final cols:[[I

.field private static drawImgSize:I = 0x0

.field private static emojiBmp:[[Landroid/graphics/Bitmap; = null

.field private static inited:Z = false

.field private static loadingEmoji:[[Z = null

.field private static placeholderPaint:Landroid/graphics/Paint; = null

.field private static rects:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final splitCount:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v12, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x4

    .line 35
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    .line 38
    sput-boolean v15, Lorg/telegram/messenger/Emoji;->inited:Z

    .line 41
    filled-new-array {v12, v13}, [I

    move-result-object v10

    const-class v11, Landroid/graphics/Bitmap;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Landroid/graphics/Bitmap;

    sput-object v10, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    .line 42
    filled-new-array {v12, v13}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    sput-object v10, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    .line 44
    new-array v10, v12, [[I

    new-array v11, v13, [I

    fill-array-data v11, :array_108

    aput-object v11, v10, v15

    const/4 v11, 0x1

    new-array v12, v13, [I

    fill-array-data v12, :array_114

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v12, v13, [I

    fill-array-data v12, :array_120

    aput-object v12, v10, v11

    const/4 v11, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_12c

    aput-object v12, v10, v11

    new-array v11, v13, [I

    fill-array-data v11, :array_138

    aput-object v11, v10, v13

    sput-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    .line 54
    const/4 v0, 0x2

    .line 55
    .local v0, "add":I
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_d7

    .line 56
    const/16 v3, 0x20

    .line 57
    .local v3, "emojiFullSize":I
    const/4 v0, 0x1

    .line 65
    :goto_5e
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sput v10, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    .line 66
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_f3

    const/high16 v10, 0x42200000    # 40.0f

    :goto_6e
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sput v10, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    .line 68
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_75
    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_fb

    .line 69
    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v10, v10, v5

    array-length v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v2, v10

    .line 71
    .local v2, "count2":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8a
    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v10, v10, v5

    array-length v10, v10

    if-ge v4, v10, :cond_f7

    .line 72
    div-int v6, v4, v2

    .line 73
    .local v6, "page":I
    mul-int v10, v6, v2

    sub-int v7, v4, v10

    .line 74
    .local v7, "position":I
    sget-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v10, v10, v5

    aget v10, v10, v6

    rem-int v9, v7, v10

    .line 75
    .local v9, "row":I
    sget-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v10, v10, v5

    aget v10, v10, v6

    div-int v1, v7, v10

    .line 76
    .local v1, "col":I
    new-instance v8, Landroid/graphics/Rect;

    mul-int v10, v9, v3

    mul-int v11, v9, v0

    add-int/2addr v10, v11

    mul-int v11, v1, v3

    mul-int v12, v1, v0

    add-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v12, v3

    mul-int v13, v9, v0

    add-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x1

    mul-int/2addr v13, v3

    mul-int v14, v1, v0

    add-int/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .local v8, "rect":Landroid/graphics/Rect;
    sget-object v10, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sget-object v11, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v11, v11, v5

    aget-object v11, v11, v4

    new-instance v12, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v13, v5

    int-to-byte v14, v6

    invoke-direct {v12, v8, v13, v14, v4}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(Landroid/graphics/Rect;BBI)V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 58
    .end local v1    # "col":I
    .end local v2    # "count2":I
    .end local v3    # "emojiFullSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "page":I
    .end local v7    # "position":I
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "row":I
    :cond_d7
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x3fc00000    # 1.5f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_e3

    .line 59
    const/16 v3, 0x40

    .restart local v3    # "emojiFullSize":I
    goto/16 :goto_5e

    .line 60
    .end local v3    # "emojiFullSize":I
    :cond_e3
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_ef

    .line 61
    const/16 v3, 0x40

    .restart local v3    # "emojiFullSize":I
    goto/16 :goto_5e

    .line 63
    .end local v3    # "emojiFullSize":I
    :cond_ef
    const/16 v3, 0x40

    .restart local v3    # "emojiFullSize":I
    goto/16 :goto_5e

    .line 66
    :cond_f3
    const/high16 v10, 0x42000000    # 32.0f

    goto/16 :goto_6e

    .line 68
    .restart local v2    # "count2":I
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    :cond_f7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_75

    .line 80
    .end local v2    # "count2":I
    .end local v4    # "i":I
    :cond_fb
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    sput-object v10, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    .line 81
    sget-object v10, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    return-void

    .line 44
    :array_108
    .array-data 4
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_114
    .array-data 4
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_120
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_12c
    .array-data 4
        0x9
        0x9
        0x9
        0x9
    .end array-data

    :array_138
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[[Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 34
    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$400()[[Z
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    return-object v0
.end method

.method static synthetic access$600(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(II)V

    return-void
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "emoji"    # Ljava/lang/String;

    .prologue
    const v6, 0xd83c

    const/4 v5, 0x0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 181
    .local v2, "lenght":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9
    if-ge v0, v2, :cond_6a

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 183
    .local v1, "ch":C
    if-lt v1, v6, :cond_66

    const v3, 0xd83e

    if-gt v1, v3, :cond_66

    .line 184
    if-ne v1, v6, :cond_63

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_63

    .line 185
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    const v3, 0xde2f

    if-eq v1, v3, :cond_36

    const v3, 0xdc04

    if-eq v1, v3, :cond_36

    const v3, 0xde1a

    if-eq v1, v3, :cond_36

    const v3, 0xdd7f

    if-ne v1, v3, :cond_60

    .line 187
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 189
    add-int/lit8 v0, v0, 0x2

    .line 181
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 191
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 194
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 196
    :cond_66
    const/16 v3, 0x20e3

    if-ne v1, v3, :cond_6b

    .line 206
    .end local v1    # "ch":C
    :cond_6a
    return-object p0

    .line 198
    .restart local v1    # "ch":C
    :cond_6b
    const/16 v3, 0x203c

    if-lt v1, v3, :cond_5d

    const/16 v3, 0x3299

    if-gt v1, v3, :cond_5d

    .line 199
    sget-object v3, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    .line 222
    .local v0, "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    if-nez v0, :cond_9

    .line 223
    const/4 v0, 0x0

    .line 227
    .end local v0    # "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :goto_8
    return-object v0

    .line 225
    .restart local v0    # "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :cond_9
    sget v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    .line 226
    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z

    goto :goto_8
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .registers 6
    .param p0, "code"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 210
    sget-object v2, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Emoji$DrawableInfo;

    .line 211
    .local v1, "info":Lorg/telegram/messenger/Emoji$DrawableInfo;
    if-nez v1, :cond_23

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawable for emoji "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 217
    :goto_22
    return-object v0

    .line 215
    :cond_23
    new-instance v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V

    .line 216
    .local v0, "ed":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    sget v3, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v0, v4, v4, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    goto :goto_22
.end method

.method private static inArray(C[C)Z
    .registers 6
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 321
    array-length v3, p1

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_a

    aget-char v0, p1, v2

    .line 322
    .local v0, "cc":C
    if-ne v0, p0, :cond_b

    .line 323
    const/4 v1, 0x1

    .line 326
    .end local v0    # "cc":C
    :cond_a
    return v1

    .line 321
    .restart local v0    # "cc":C
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 168
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    move-object v0, p0

    .line 169
    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 173
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_18
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 176
    :cond_1f
    return-void
.end method

.method private static loadEmoji(II)V
    .registers 22
    .param p0, "page"    # I
    .param p1, "page2"    # I

    .prologue
    .line 87
    const/4 v8, 0x1

    .line 88
    .local v8, "imageResize":I
    :try_start_1
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_13b

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_77

    .line 89
    const/high16 v11, 0x40000000    # 2.0f

    .line 90
    .local v11, "scale":F
    const/4 v8, 0x2

    .line 120
    :goto_c
    const/4 v2, 0x4

    .local v2, "a":I
    :goto_d
    const/4 v13, 0x7

    if-ge v2, v13, :cond_91

    .line 121
    :try_start_10
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "v%d_emoji%.01fx_%d.jpg"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "imageName":Ljava/lang/String;
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 123
    .local v6, "imageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_42

    .line 124
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 126
    :cond_42
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "v%d_emoji%.01fx_a_%d.jpg"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 127
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_74

    .line 129
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_74} :catch_cc
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_74} :catch_13b

    .line 120
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 91
    .end local v2    # "a":I
    .end local v6    # "imageFile":Ljava/io/File;
    .end local v7    # "imageName":Ljava/lang/String;
    .end local v11    # "scale":F
    :cond_77
    :try_start_77
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v14, 0x3fc00000    # 1.5f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_82

    .line 94
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "scale":F
    goto :goto_c

    .line 95
    .end local v11    # "scale":F
    :cond_82
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_84} :catch_13b

    const/high16 v14, 0x40000000    # 2.0f

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_8d

    .line 96
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "scale":F
    goto :goto_c

    .line 98
    .end local v11    # "scale":F
    :cond_8d
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "scale":F
    goto/16 :goto_c

    .line 132
    .restart local v2    # "a":I
    :cond_91
    const/16 v2, 0x8

    :goto_93
    const/16 v13, 0xb

    if-ge v2, v13, :cond_d0

    .line 133
    :try_start_97
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "v%d_emoji%.01fx_%d.png"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .restart local v7    # "imageName":Ljava/lang/String;
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 135
    .restart local v6    # "imageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_c9

    .line 136
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_c9} :catch_cc
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_c9} :catch_13b

    .line 132
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 139
    .end local v6    # "imageFile":Ljava/io/File;
    .end local v7    # "imageName":Ljava/lang/String;
    :catch_cc
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/Exception;
    :try_start_cd
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d0} :catch_13b

    .line 142
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d0
    const/4 v3, 0x0

    .line 144
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_d1
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "emoji/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "v11_emoji%.01fx_%d_%d.png"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 145
    .local v9, "is":Ljava/io/InputStream;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    iput v8, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    const/4 v13, 0x0

    invoke-static {v9, v13, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 149
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_128} :catch_136

    .line 154
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_128
    move-object v5, v3

    .line 155
    .local v5, "finalBitmap":Landroid/graphics/Bitmap;
    :try_start_129
    new-instance v13, Lorg/telegram/messenger/Emoji$1;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v1, v5}, Lorg/telegram/messenger/Emoji$1;-><init>(IILandroid/graphics/Bitmap;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 165
    .end local v2    # "a":I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "scale":F
    :goto_135
    return-void

    .line 150
    .restart local v2    # "a":I
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "scale":F
    :catch_136
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_13a} :catch_13b

    goto :goto_128

    .line 162
    .end local v2    # "a":I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v11    # "scale":F
    :catch_13b
    move-exception v12

    .line 163
    .local v12, "x":Ljava/lang/Throwable;
    const-string v13, "Error loading emoji"

    invoke-static {v13, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_135
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "size"    # I
    .param p3, "createNew"    # Z

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;
    .registers 35
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "fontMetrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "size"    # I
    .param p3, "createNew"    # Z
    .param p4, "emojiOnly"    # [I

    .prologue
    .line 334
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v25, v0

    if-nez v25, :cond_14

    if-eqz p0, :cond_14

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v25

    if-nez v25, :cond_15

    .line 471
    .end local p0    # "cs":Ljava/lang/CharSequence;
    :cond_14
    :goto_14
    return-object p0

    .line 341
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_15
    if-nez p3, :cond_12f

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v25, v0

    if-eqz v25, :cond_12f

    move-object/from16 v21, p0

    .line 342
    check-cast v21, Landroid/text/Spannable;

    .line 346
    .local v21, "s":Landroid/text/Spannable;
    :goto_23
    const-wide/16 v8, 0x0

    .line 347
    .local v8, "buf":J
    const/16 v16, 0x0

    .line 349
    .local v16, "emojiCount":I
    const/16 v23, -0x1

    .line 350
    .local v23, "startIndex":I
    const/16 v24, 0x0

    .line 351
    .local v24, "startLength":I
    const/16 v20, 0x0

    .line 352
    .local v20, "previousGoodIndex":I
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v25, 0x10

    move/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 353
    .local v15, "emojiCode":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 357
    .local v7, "addionalCode":Ljava/lang/StringBuilder;
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 358
    .local v18, "length":I
    const/4 v12, 0x0

    .line 364
    .local v12, "doneEmoji":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_46
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2d7

    .line 365
    :try_start_4c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 366
    .local v10, "c":C
    const v25, 0xd83c

    move/from16 v0, v25

    if-lt v10, v0, :cond_62

    const v25, 0xd83e

    move/from16 v0, v25

    if-le v10, v0, :cond_8f

    :cond_62
    const-wide/16 v26, 0x0

    cmp-long v25, v8, v26

    if-eqz v25, :cond_13d

    const-wide v26, -0x100000000L

    and-long v26, v26, v8

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_13d

    const-wide/32 v26, 0xffff

    and-long v26, v26, v8

    const-wide/32 v28, 0xd83c

    cmp-long v25, v26, v28

    if-nez v25, :cond_13d

    const v25, 0xdde6

    move/from16 v0, v25

    if-lt v10, v0, :cond_13d

    const v25, 0xddff

    move/from16 v0, v25

    if-gt v10, v0, :cond_13d

    .line 367
    :cond_8f
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_99

    .line 368
    move/from16 v23, v17

    .line 370
    :cond_99
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v24, v24, 0x1

    .line 372
    const/16 v25, 0x10

    shl-long v8, v8, v25

    .line 373
    int-to-long v0, v10

    move-wide/from16 v26, v0

    or-long v8, v8, v26

    .line 413
    :cond_a7
    :goto_a7
    if-eqz v12, :cond_f7

    add-int/lit8 v25, v17, 0x2

    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_f7

    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const v26, 0xd83c

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f7

    .line 414
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    .line 415
    .local v19, "next":C
    const v25, 0xdffb

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_f7

    const v25, 0xdfff

    move/from16 v0, v19

    move/from16 v1, v25

    if-gt v0, v1, :cond_f7

    .line 416
    add-int/lit8 v25, v17, 0x1

    add-int/lit8 v26, v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v24, v24, 0x2

    .line 418
    add-int/lit8 v17, v17, 0x2

    .line 421
    .end local v19    # "next":C
    :cond_f7
    move/from16 v20, v17

    .line 422
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_fa
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v6, v0, :cond_227

    .line 423
    add-int/lit8 v25, v17, 0x1

    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_12c

    .line 424
    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 425
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_213

    .line 426
    const/16 v25, 0x200d

    move/from16 v0, v25

    if-ne v10, v0, :cond_12c

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_12c

    .line 427
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_127} :catch_2df

    .line 428
    add-int/lit8 v17, v17, 0x1

    .line 429
    add-int/lit8 v24, v24, 0x1

    .line 430
    const/4 v12, 0x0

    .line 422
    :cond_12c
    :goto_12c
    add-int/lit8 v6, v6, 0x1

    goto :goto_fa

    .line 344
    .end local v6    # "a":I
    .end local v7    # "addionalCode":Ljava/lang/StringBuilder;
    .end local v8    # "buf":J
    .end local v10    # "c":C
    .end local v12    # "doneEmoji":Z
    .end local v15    # "emojiCode":Ljava/lang/StringBuilder;
    .end local v16    # "emojiCount":I
    .end local v17    # "i":I
    .end local v18    # "length":I
    .end local v20    # "previousGoodIndex":I
    .end local v21    # "s":Landroid/text/Spannable;
    .end local v23    # "startIndex":I
    .end local v24    # "startLength":I
    :cond_12f
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v25

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v21

    .restart local v21    # "s":Landroid/text/Spannable;
    goto/16 :goto_23

    .line 374
    .restart local v7    # "addionalCode":Ljava/lang/StringBuilder;
    .restart local v8    # "buf":J
    .restart local v10    # "c":C
    .restart local v12    # "doneEmoji":Z
    .restart local v15    # "emojiCode":Ljava/lang/StringBuilder;
    .restart local v16    # "emojiCount":I
    .restart local v17    # "i":I
    .restart local v18    # "length":I
    .restart local v20    # "previousGoodIndex":I
    .restart local v23    # "startIndex":I
    .restart local v24    # "startLength":I
    :cond_13d
    :try_start_13d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_15f

    const/16 v25, 0x2640

    move/from16 v0, v25

    if-eq v10, v0, :cond_155

    const/16 v25, 0x2642

    move/from16 v0, v25

    if-eq v10, v0, :cond_155

    const/16 v25, 0x2695

    move/from16 v0, v25

    if-ne v10, v0, :cond_15f

    .line 375
    :cond_155
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v24, v24, 0x1

    .line 377
    const-wide/16 v8, 0x0

    .line 378
    const/4 v12, 0x1

    goto/16 :goto_a7

    .line 379
    :cond_15f
    const-wide/16 v26, 0x0

    cmp-long v25, v8, v26

    if-lez v25, :cond_17d

    const v25, 0xf000

    and-int v25, v25, v10

    const v26, 0xd000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17d

    .line 380
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v24, v24, 0x1

    .line 382
    const-wide/16 v8, 0x0

    .line 383
    const/4 v12, 0x1

    goto/16 :goto_a7

    .line 384
    :cond_17d
    const/16 v25, 0x20e3

    move/from16 v0, v25

    if-ne v10, v0, :cond_1b4

    .line 385
    if-lez v17, :cond_a7

    .line 386
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 387
    .local v11, "c2":C
    const/16 v25, 0x30

    move/from16 v0, v25

    if-lt v11, v0, :cond_199

    const/16 v25, 0x39

    move/from16 v0, v25

    if-le v11, v0, :cond_1a5

    :cond_199
    const/16 v25, 0x23

    move/from16 v0, v25

    if-eq v11, v0, :cond_1a5

    const/16 v25, 0x2a

    move/from16 v0, v25

    if-ne v11, v0, :cond_a7

    .line 388
    :cond_1a5
    move/from16 v23, v20

    .line 389
    sub-int v25, v17, v20

    add-int/lit8 v24, v25, 0x1

    .line 390
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    const/4 v12, 0x1

    goto/16 :goto_a7

    .line 395
    .end local v11    # "c2":C
    :cond_1b4
    const/16 v25, 0xa9

    move/from16 v0, v25

    if-eq v10, v0, :cond_1cc

    const/16 v25, 0xae

    move/from16 v0, v25

    if-eq v10, v0, :cond_1cc

    const/16 v25, 0x203c

    move/from16 v0, v25

    if-lt v10, v0, :cond_1ea

    const/16 v25, 0x3299

    move/from16 v0, v25

    if-gt v10, v0, :cond_1ea

    :cond_1cc
    sget-object v25, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1ea

    .line 396
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e2

    .line 397
    move/from16 v23, v17

    .line 399
    :cond_1e2
    add-int/lit8 v24, v24, 0x1

    .line 400
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    const/4 v12, 0x1

    goto/16 :goto_a7

    .line 402
    :cond_1ea
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_200

    .line 403
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 404
    const/16 v23, -0x1

    .line 405
    const/16 v24, 0x0

    .line 406
    const/4 v12, 0x0

    goto/16 :goto_a7

    .line 407
    :cond_200
    const v25, 0xfe0f

    move/from16 v0, v25

    if-eq v10, v0, :cond_a7

    .line 408
    if-eqz p4, :cond_a7

    .line 409
    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, p4, v25

    .line 410
    const/16 p4, 0x0

    goto/16 :goto_a7

    .line 433
    .restart local v6    # "a":I
    :cond_213
    const v25, 0xfe00

    move/from16 v0, v25

    if-lt v10, v0, :cond_12c

    const v25, 0xfe0f

    move/from16 v0, v25

    if-gt v10, v0, :cond_12c

    .line 434
    add-int/lit8 v17, v17, 0x1

    .line 435
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_12c

    .line 440
    :cond_227
    if-eqz v12, :cond_277

    add-int/lit8 v25, v17, 0x2

    move/from16 v0, v25

    move/from16 v1, v18

    if-ge v0, v1, :cond_277

    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const v26, 0xd83c

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_277

    .line 441
    add-int/lit8 v25, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    .line 442
    .restart local v19    # "next":C
    const v25, 0xdffb

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_277

    const v25, 0xdfff

    move/from16 v0, v19

    move/from16 v1, v25

    if-gt v0, v1, :cond_277

    .line 443
    add-int/lit8 v25, v17, 0x1

    add-int/lit8 v26, v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v24, v24, 0x2

    .line 445
    add-int/lit8 v17, v17, 0x2

    .line 448
    .end local v19    # "next":C
    :cond_277
    if-eqz v12, :cond_2c5

    .line 449
    if-eqz p4, :cond_283

    .line 450
    const/16 v25, 0x0

    aget v26, p4, v25

    add-int/lit8 v26, v26, 0x1

    aput v26, p4, v25

    .line 452
    :cond_283
    const/16 v25, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v13

    .line 453
    .local v13, "drawable":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    if-eqz v13, :cond_2b9

    .line 454
    new-instance v22, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 455
    .local v22, "span":Lorg/telegram/messenger/Emoji$EmojiSpan;
    add-int v25, v23, v24

    const/16 v26, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 456
    add-int/lit8 v16, v16, 0x1

    .line 458
    .end local v22    # "span":Lorg/telegram/messenger/Emoji$EmojiSpan;
    :cond_2b9
    const/16 v24, 0x0

    .line 459
    const/16 v23, -0x1

    .line 460
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 461
    const/4 v12, 0x0

    .line 463
    .end local v13    # "drawable":Lorg/telegram/messenger/Emoji$EmojiDrawable;
    :cond_2c5
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_2c7} :catch_2df

    const/16 v26, 0x17

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2db

    const/16 v25, 0x32

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_2db

    .end local v6    # "a":I
    .end local v10    # "c":C
    :cond_2d7
    move-object/from16 p0, v21

    .line 471
    goto/16 :goto_14

    .line 364
    .restart local v6    # "a":I
    .restart local v10    # "c":C
    :cond_2db
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_46

    .line 467
    .end local v6    # "a":I
    .end local v10    # "c":C
    :catch_2df
    move-exception v14

    .line 468
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_14
.end method
