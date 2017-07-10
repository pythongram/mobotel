.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private targetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->reset()V

    .line 87
    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "currentScore"    # I
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .param p3, "score"    # I

    .prologue
    const/4 v0, -0x1

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    if-ne p0, v0, :cond_b

    :cond_9
    move v0, p0

    .line 308
    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int v0, p0, p3

    goto :goto_a
.end method


# virtual methods
.method public cascadeFrom(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .registers 4
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .prologue
    const/4 v1, -0x1

    .line 273
    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_a

    .line 274
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 276
    :cond_a
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-eq v0, v1, :cond_12

    .line 277
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 279
    :cond_12
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-eq v0, v1, :cond_1a

    .line 280
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 282
    :cond_1a
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 283
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 285
    :cond_22
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v0, v1, :cond_2a

    .line 286
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 288
    :cond_2a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v0, v1, :cond_32

    .line 289
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 291
    :cond_32
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_3a

    .line 292
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 294
    :cond_3a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_46

    .line 295
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 296
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 298
    :cond_46
    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_4f

    .line 299
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 301
    :cond_4f
    return-void
.end method

.method public getBackgroundColor()I
    .registers 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_c

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0
.end method

.method public getFontColor()I
    .registers 3

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-nez v0, :cond_c

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "classes"    # [Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    .line 156
    :cond_28
    :goto_28
    return v1

    .line 147
    :cond_29
    const/4 v0, 0x0

    .line 148
    .local v0, "score":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, p1, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 149
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v2, p2, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 150
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v0, v2, p4, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 151
    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 154
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    move v1, v0

    .line 156
    goto :goto_28
.end method

.method public getStyle()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 167
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-ne v3, v0, :cond_c

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v0, :cond_c

    .line 170
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    if-ne v0, v1, :cond_18

    move v0, v1

    :goto_11
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v1, :cond_16

    const/4 v2, 0x2

    :cond_16
    or-int/2addr v0, v2

    goto :goto_b

    :cond_18
    move v0, v2

    goto :goto_11
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 175
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUnderline()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 184
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 96
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 97
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 98
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 99
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 100
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 101
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 102
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 103
    return-void
.end method

.method public setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "backgroundColor"    # I

    .prologue
    .line 235
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 237
    return-object p0
.end method

.method public setBold(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "bold"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 193
    return-object p0

    .line 192
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 218
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 220
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setFontSize(F)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "fontSize"    # F

    .prologue
    .line 254
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 255
    return-object p0
.end method

.method public setFontSizeUnit(S)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "unit"    # S

    .prologue
    .line 259
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 260
    return-object p0
.end method

.method public setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "italic"    # Z

    .prologue
    .line 197
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 198
    return-object p0

    .line 197
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "linethrough"    # Z

    .prologue
    .line 179
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 180
    return-object p0

    .line 179
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .registers 3
    .param p1, "targetClasses"    # [Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetTag"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetVoice"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 250
    return-object p0
.end method

.method public setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "underline"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 189
    return-object p0

    .line 188
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method
