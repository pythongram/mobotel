.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# instance fields
.field private color:I

.field private drawBrodcast:Z

.field private drawPhoto:Z

.field private isProfile:Z

.field private namePaint:Landroid/text/TextPaint;

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textHeight:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:F

.field private textWidth:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .registers 9
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "profile"    # Z

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 66
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 67
    if-eqz p1, :cond_16

    .line 68
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_17

    const/4 v4, 0x1

    :goto_11
    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    :cond_16
    return-void

    .line 68
    :cond_17
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .registers 9
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "profile"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 58
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 59
    if-eqz p1, :cond_13

    .line 60
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    :cond_13
    return-void
.end method

.method public static getButtonColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 88
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_actionBarSelector:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 84
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorIndex(I)I
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 77
    if-ltz p0, :cond_7

    const/16 v0, 0x8

    if-ge p0, v0, :cond_7

    .line 80
    .end local p0    # "id":I
    :goto_6
    return p0

    .restart local p0    # "id":I
    :cond_7
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    array-length v0, v0

    rem-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_6
.end method

.method public static getIconColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 92
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_actionBarIcon:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNameColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 108
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileBackColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 104
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_backgroundActionBar:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 96
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_backgroundInProfile:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProfileTextColorForId(I)I
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 100
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_subtitleInProfile:[Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 210
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_9

    .line 238
    :goto_8
    return-void

    .line 214
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 215
    .local v1, "size":I
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v5, "avatar_text"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 216
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 218
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 219
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    iget-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    if-eqz v4, :cond_71

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_71

    .line 222
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 223
    .local v2, "x":I
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v3, v4, 0x2

    .line 224
    .local v3, "y":I
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_6d
    :goto_6d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 227
    :cond_71
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_8b

    .line 228
    int-to-float v4, v1

    iget v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v4, v5

    int-to-float v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6d

    .line 230
    :cond_8b
    iget-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    if-eqz v4, :cond_6d

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6d

    .line 231
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 232
    .restart local v2    # "x":I
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v3, v4, 0x2

    .line 233
    .restart local v3    # "y":I
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6d
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 252
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 243
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 248
    return-void
.end method

.method public setDrawPhoto(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawPhoto:Z

    .line 206
    return-void
.end method

.method public setInfo(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "isBroadcast"    # Z

    .prologue
    .line 132
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    return-void
.end method

.method public setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 18
    .param p1, "id"    # I
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "isBroadcast"    # Z
    .param p5, "custom"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    if-eqz v1, :cond_73

    .line 141
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileColorForId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 146
    :goto_a
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawBrodcast:Z

    .line 148
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 149
    :cond_16
    move-object p2, p3

    .line 150
    const/4 p3, 0x0

    .line 153
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    if-eqz p5, :cond_7a

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_27
    :goto_27
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_117

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "text":Ljava/lang/String;
    :try_start_39
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_72

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_72} :catch_111

    .line 202
    .end local v2    # "text":Ljava/lang/String;
    :cond_72
    :goto_72
    return-void

    .line 143
    :cond_73
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto :goto_a

    .line 157
    :cond_7a
    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 160
    :cond_8c
    if-eqz p3, :cond_ca

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ca

    .line 161
    const/4 v11, 0x0

    .line 162
    .local v11, "lastch":Ljava/lang/Integer;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, "a":I
    :goto_9b
    if-ltz v9, :cond_a7

    .line 163
    if-eqz v11, :cond_bf

    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_bf

    .line 168
    :cond_a7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_b4

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\u200c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_b4
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 166
    :cond_bf
    invoke-virtual {p3, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 162
    add-int/lit8 v9, v9, -0x1

    goto :goto_9b

    .line 172
    .end local v9    # "a":I
    .end local v11    # "lastch":Ljava/lang/Integer;
    :cond_ca
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .restart local v9    # "a":I
    :goto_d8
    if-ltz v9, :cond_27

    .line 174
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_10e

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v9, v1, :cond_10e

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_10e

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_101

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\u200c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_101
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 173
    :cond_10e
    add-int/lit8 v9, v9, -0x1

    goto :goto_d8

    .line 196
    .end local v9    # "a":I
    .restart local v2    # "text":Ljava/lang/String;
    :catch_111
    move-exception v10

    .line 197
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_72

    .line 200
    .end local v2    # "text":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_117
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    goto/16 :goto_72
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 8
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v3, 0x0

    .line 118
    if-eqz p1, :cond_11

    .line 119
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-gez v0, :cond_12

    const/4 v4, 0x1

    :goto_c
    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 121
    :cond_11
    return-void

    .line 119
    :cond_12
    const/4 v4, 0x0

    goto :goto_c
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 8
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 112
    if-eqz p1, :cond_e

    .line 113
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 115
    :cond_e
    return-void
.end method

.method public setProfile(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isProfile:Z

    .line 74
    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 129
    return-void
.end method
