.class public Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
.super Landroid/widget/FrameLayout;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatDialogCell"
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private countDrawable:Landroid/graphics/drawable/Drawable;

.field private countDrawableGrey:Landroid/graphics/drawable/Drawable;

.field private countLayout:Landroid/text/StaticLayout;

.field private countPaint:Landroid/text/TextPaint;

.field private countWidth:I

.field private dialog_id:J

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUnreadCount:I

.field private nameTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V
    .registers 12
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    .line 365
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 366
    const v0, 0x7f0201aa

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setBackgroundResource(I)V

    .line 367
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 368
    .local v7, "themePrefs":Landroid/content/SharedPreferences;
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 371
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$800(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 380
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x40c00000    # 6.0f

    # getter for: Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10d

    .line 382
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "chatsCountBGColor"

    const v2, -0xad8a64

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    const-string v1, "chatsCountSilentBGColor"

    const-string v2, "chatsCountBGColor"

    const v3, -0x464647

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 386
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    const-string v1, "chatsCountColor"

    const/4 v2, -0x1

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 391
    :cond_10d
    return-void
.end method


# virtual methods
.method public checkUnreadCounter(I)V
    .registers 11
    .param p1, "mask"    # I

    .prologue
    const/4 v7, 0x0

    .line 401
    if-eqz p1, :cond_b

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_b

    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_31

    .line 402
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 403
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v8, :cond_23

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-nez v0, :cond_32

    .line 404
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_31

    .line 405
    if-eqz p1, :cond_2c

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->invalidate()V

    .line 408
    :cond_2c
    iput v7, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->lastUnreadCount:I

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 424
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_31
    :goto_31
    return-void

    .line 411
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_32
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->lastUnreadCount:I

    iget v2, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eq v0, v2, :cond_31

    .line 412
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->lastUnreadCount:I

    .line 413
    const-string v0, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->lastUnreadCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "countString":Ljava/lang/String;
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->lastUnreadCount:I

    const/16 v2, 0x63

    if-le v0, v2, :cond_55

    .line 415
    const-string v1, "+99"

    .line 417
    :cond_55
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countWidth:I

    .line 418
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 419
    if-eqz p1, :cond_31

    .line 420
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->invalidate()V

    goto :goto_31
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 458
    .local v1, "result":Z
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v4, :cond_68

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_68

    .line 459
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 460
    .local v2, "top":I
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 461
    .local v0, "left":I
    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v3, v0, v4

    .line 462
    .local v3, "x":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->dialog_id:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 463
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countWidth:I

    add-int/2addr v6, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawableGrey:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    :goto_53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 470
    int-to-float v4, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 471
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 474
    .end local v0    # "left":I
    .end local v2    # "top":I
    .end local v3    # "x":I
    :cond_68
    return v1

    .line 466
    .restart local v0    # "left":I
    .restart local v2    # "top":I
    .restart local v3    # "x":I
    :cond_69
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countWidth:I

    add-int/2addr v6, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->countDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_53
.end method

.method public getDialogId()J
    .registers 3

    .prologue
    .line 478
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->dialog_id:J

    return-wide v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 395
    :cond_19
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 397
    :cond_28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDialog(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 427
    int-to-long v4, p1

    iput-wide v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->dialog_id:J

    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "photo":Lorg/telegram/tgnet/TLObject;
    if-lez p1, :cond_46

    .line 430
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 431
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_3e

    .line 432
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_21
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 437
    if-eqz v2, :cond_30

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_30

    .line 438
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 452
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_30
    :goto_30
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v4, "50_50"

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 453
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->checkUnreadCounter(I)V

    .line 454
    return-void

    .line 434
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3e
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 441
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_46
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 442
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_6c

    .line 443
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :goto_5c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 448
    if-eqz v0, :cond_30

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_30

    .line 449
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_30

    .line 445
    :cond_6c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c
.end method
