.class public Lorg/telegram/ui/Components/PasscodeView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;,
        Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;
    }
.end annotation


# static fields
.field private static final id_fingerprint_imageview:I = 0x3e9

.field private static final id_fingerprint_textview:I = 0x3e8


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundFrameLayout:Landroid/widget/FrameLayout;

.field private cancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private checkImage:Landroid/widget/ImageView;

.field private delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

.field private eraseView:Landroid/widget/ImageView;

.field private fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private fingerprintImageView:Landroid/widget/ImageView;

.field private fingerprintStatusTextView:Landroid/widget/TextView;

.field private keyboardHeight:I

.field private lettersTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numberFrameLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private numberTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numbersFrameLayout:Landroid/widget/FrameLayout;

.field private passcodeTextView:Landroid/widget/TextView;

.field private passwordEditText:Landroid/widget/EditText;

.field private passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

.field private passwordFrameLayout:Landroid/widget/FrameLayout;

.field private rect:Landroid/graphics/Rect;

.field private selfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 411
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 419
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    .line 429
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->setWillNotDraw(Z)V

    .line 430
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->setVisibility(I)V

    .line 432
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    .line 433
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 434
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 435
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 436
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 437
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    .line 440
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 441
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 442
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 443
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 444
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 448
    .local v2, "imageView":Landroid/widget/ImageView;
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 449
    const v6, 0x7f02020d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 452
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_320

    .line 453
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 454
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 459
    :goto_8b
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 460
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 461
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    .line 464
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 469
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 470
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 471
    const/high16 v6, 0x42780000    # 62.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 472
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 473
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;-><init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .line 476
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 478
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 479
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 480
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 481
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 482
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 483
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 484
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    .line 487
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 488
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 489
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 490
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setLines(I)V

    .line 491
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 492
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 493
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 494
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 497
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 498
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 499
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 500
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 501
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 502
    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 503
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 504
    const/16 v6, 0x51

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 505
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 516
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 534
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 551
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    .line 552
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v7, 0x7f02020b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 554
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    const v7, 0x7f020069

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 555
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 557
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 558
    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 559
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 560
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 561
    const/16 v6, 0x55

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 562
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/PasscodeView$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/PasscodeView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 571
    .local v4, "lineFrameLayout":Landroid/widget/FrameLayout;
    const v6, 0x26ffffff

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 572
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 573
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 574
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 575
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 576
    const/16 v6, 0x53

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 577
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 578
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 579
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    .line 582
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/PasscodeView;->addView(Landroid/view/View;)V

    .line 583
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 584
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 585
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 586
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 587
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    .line 590
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    .line 591
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    .line 592
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_288
    const/16 v6, 0xa

    if-ge v0, v6, :cond_368

    .line 593
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 594
    .local v5, "textView":Landroid/widget/TextView;
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    const/4 v6, 0x1

    const/high16 v7, 0x42100000    # 36.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 596
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 597
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 599
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 601
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 602
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 603
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v5, Landroid/widget/TextView;

    .end local v5    # "textView":Landroid/widget/TextView;
    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 607
    .restart local v5    # "textView":Landroid/widget/TextView;
    const/4 v6, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 608
    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 610
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 613
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 614
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 615
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    packed-switch v0, :pswitch_data_40c

    .line 647
    :goto_317
    :pswitch_317
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_288

    .line 456
    .end local v0    # "a":I
    .end local v4    # "lineFrameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_320
    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 457
    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_8b

    .line 618
    .restart local v0    # "a":I
    .restart local v4    # "lineFrameLayout":Landroid/widget/FrameLayout;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :pswitch_332
    const-string v6, "+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 621
    :pswitch_338
    const-string v6, "ABC"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 624
    :pswitch_33e
    const-string v6, "DEF"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 627
    :pswitch_344
    const-string v6, "GHI"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 630
    :pswitch_34a
    const-string v6, "JKL"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 633
    :pswitch_350
    const-string v6, "MNO"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 636
    :pswitch_356
    const-string v6, "PQRS"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 639
    :pswitch_35c
    const-string v6, "TUV"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 642
    :pswitch_362
    const-string v6, "WXYZ"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_317

    .line 649
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_368
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    .line 650
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 651
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    const v7, 0x7f02020c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 653
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 654
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 655
    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 656
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    const/4 v0, 0x0

    :goto_3a7
    const/16 v6, 0xb

    if-ge v0, v6, :cond_3d9

    .line 659
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 660
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const v6, 0x7f020069

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 661
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 662
    const/16 v6, 0xa

    if-ne v0, v6, :cond_3c9

    .line 663
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$5;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    :cond_3c9
    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$6;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a7

    .line 718
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3d9
    const/16 v0, 0xa

    :goto_3db
    if-ltz v0, :cond_40a

    .line 719
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 720
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 721
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 722
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 723
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 724
    const/16 v6, 0x33

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 725
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    add-int/lit8 v0, v0, -0x1

    goto :goto_3db

    .line 727
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_40a
    return-void

    .line 616
    nop

    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_332
        :pswitch_317
        :pswitch_338
        :pswitch_33e
        :pswitch_344
        :pswitch_34a
        :pswitch_350
        :pswitch_356
        :pswitch_35c
        :pswitch_362
    .end packed-switch
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PasscodeView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/PasscodeView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->showFingerprintError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PasscodeView;FI)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PasscodeView;)Landroid/support/v4/os/CancellationSignal;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/PasscodeView;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView;
    .param p1, "x1"    # Landroid/support/v4/os/CancellationSignal;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object p1
.end method

.method private checkFingerprint()V
    .registers 20

    .prologue
    .line 842
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    .line 843
    .local v16, "parentActivity":Landroid/app/Activity;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_26

    if-eqz v16, :cond_26

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-eqz v2, :cond_26

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v2, :cond_26

    .line 845
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_27

    move-result v2

    if-eqz v2, :cond_2b

    .line 949
    :cond_26
    :goto_26
    return-void

    .line 848
    :catch_27
    move-exception v12

    .line 849
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 852
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2b
    :try_start_2b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v13

    .line 853
    .local v13, "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v13}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v13}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 854
    new-instance v17, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 855
    .local v17, "relativeLayout":Landroid/widget/RelativeLayout;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 857
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 858
    .local v14, "fingerprintTextView":Landroid/widget/TextView;
    const v2, -0x6c6c6d

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 859
    const/16 v2, 0x3e8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setId(I)V

    .line 860
    const v2, 0x1030208

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 861
    const-string v2, "FingerprintInfo"

    const v3, 0x7f07021b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 863
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v15

    .line 864
    .local v15, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 865
    const/16 v2, 0x14

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 866
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const v3, 0x7f020121

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x3

    const/16 v10, 0x3e8

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const-string v3, "FingerprintHelp"

    const v4, 0x7f07021a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v3, 0x10301f0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 879
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v15

    .line 880
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 881
    const/16 v2, 0x8

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 882
    const/4 v2, 0x6

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 883
    const/16 v2, 0x11

    const/16 v3, 0x3e9

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    .local v11, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 888
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 889
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 890
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PasscodeView$10;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_179} :catch_1b6

    if-eqz v2, :cond_18c

    .line 902
    :try_start_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_18c} :catch_1b9
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_18c} :catch_1b6

    .line 909
    :cond_18c
    :goto_18c
    :try_start_18c
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 911
    new-instance v2, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v2}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 912
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/PasscodeView;->selfCancelled:Z

    .line 913
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PasscodeView$11;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const/4 v7, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->authenticate(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    goto/16 :goto_26

    .line 945
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    .end local v14    # "fingerprintTextView":Landroid/widget/TextView;
    .end local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_1b6
    move-exception v2

    goto/16 :goto_26

    .line 905
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v13    # "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    .restart local v14    # "fingerprintTextView":Landroid/widget/TextView;
    .restart local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "relativeLayout":Landroid/widget/RelativeLayout;
    :catch_1b9
    move-exception v12

    .line 906
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1bd
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_1bd} :catch_1b6

    goto :goto_18c
.end method

.method private onPasscodeError()V
    .registers 5

    .prologue
    .line 794
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 795
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_13

    .line 796
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 798
    :cond_13
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->shakeTextView(FI)V

    .line 799
    return-void
.end method

.method private processDone(Z)V
    .registers 10
    .param p1, "fingerprint"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 734
    if-nez p1, :cond_3f

    .line 735
    const-string v1, ""

    .line 736
    .local v1, "password":Ljava/lang/String;
    sget v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v2, :cond_1a

    .line 737
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getString()Ljava/lang/String;

    move-result-object v1

    .line 741
    :cond_10
    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 742
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    .line 775
    .end local v1    # "password":Ljava/lang/String;
    :cond_19
    :goto_19
    return-void

    .line 738
    .restart local v1    # "password":Ljava/lang/String;
    :cond_1a
    sget v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v2, v7, :cond_10

    .line 739
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 745
    :cond_29
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 746
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V
    invoke-static {v2, v7}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 748
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->onPasscodeError()V

    goto :goto_19

    .line 752
    .end local v1    # "password":Ljava/lang/String;
    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 753
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 755
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 756
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 757
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "translationY"

    new-array v4, v7, [F

    const/high16 v5, 0x41a00000    # 20.0f

    .line 758
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    .line 759
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    .line 757
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 760
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView$7;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 766
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 768
    sput-boolean v6, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 769
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 770
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 771
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 772
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    if-eqz v2, :cond_19

    .line 773
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;->didAcceptedPassword()V

    goto/16 :goto_19
.end method

.method private shakeTextView(FI)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 778
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    .line 791
    :goto_5
    return-void

    .line 781
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 782
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const-string v3, "translationX"

    new-array v4, v4, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 783
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 784
    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$8;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PasscodeView$8;-><init>(Lorg/telegram/ui/Components/PasscodeView;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5
.end method

.method private showFingerprintError(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintImageView:Landroid/widget/ImageView;

    const v2, 0x7f02011e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1024
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const v2, -0xbaee2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1026
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1027
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_28

    .line 1028
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1030
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintStatusTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 1031
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1169
    :goto_7
    return-void

    .line 1151
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_87

    .line 1152
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_25

    .line 1153
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1154
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1156
    :cond_25
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 1157
    .local v2, "scaleX":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1158
    .local v3, "scaleY":F
    cmpg-float v7, v2, v3

    if-gez v7, :cond_85

    move v1, v3

    .line 1159
    .local v1, "scale":F
    :goto_49
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 1160
    .local v4, "width":I
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 1161
    .local v0, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    .line 1162
    .local v5, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget v8, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    add-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 1163
    .local v6, "y":I
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v4

    add-int v9, v6, v0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1164
    iget-object v7, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .end local v0    # "height":I
    .end local v1    # "scale":F
    .end local v4    # "width":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_85
    move v1, v2

    .line 1158
    goto :goto_49

    .line 1167
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    :cond_87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1128
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1129
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 1130
    .local v3, "usableViewHeight":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PasscodeView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1131
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    iput v4, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    .line 1133
    sget v4, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_76

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_76

    .line 1134
    :cond_3f
    const/4 v2, 0x0

    .line 1135
    .local v2, "t":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 1136
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1138
    :cond_54
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1139
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v2

    iget v5, p0, Lorg/telegram/ui/Components/PasscodeView;->keyboardHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_7a

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6d
    sub-int v4, v5, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1140
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "t":I
    :cond_76
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1144
    return-void

    .line 1139
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "t":I
    :cond_7a
    const/4 v4, 0x0

    goto :goto_6d
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1035
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 1036
    .local v16, "width":I
    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_170

    const/16 v17, 0x0

    :goto_18
    sub-int v5, v18, v17

    .line 1040
    .local v5, "height":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-nez v17, :cond_178

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_178

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1042
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v17, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v17, :cond_174

    div-int/lit8 v17, v16, 0x2

    :goto_4c
    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1043
    const/high16 v17, 0x430c0000    # 140.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1044
    const/high16 v17, 0x430c0000    # 140.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1048
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1049
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1050
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1051
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :goto_a2
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x4

    .line 1083
    .local v11, "sizeBetweenNumbersX":I
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x5

    .line 1085
    .local v12, "sizeBetweenNumbersY":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_c3
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ge v2, v0, :cond_270

    .line 1088
    if-nez v2, :cond_21b

    .line 1089
    const/16 v9, 0xa

    .line 1095
    .local v9, "num":I
    :goto_cd
    div-int/lit8 v10, v9, 0x3

    .line 1096
    .local v10, "row":I
    rem-int/lit8 v3, v9, 0x3

    .line 1098
    .local v3, "col":I
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v2, v0, :cond_229

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numberTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1100
    .local v13, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->lettersTextViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1101
    .local v14, "textView1":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1102
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1103
    .local v7, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v15, v12, v17

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1104
    .local v15, "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1105
    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x42200000    # 40.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1106
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "textView":Landroid/widget/TextView;
    .end local v14    # "textView1":Landroid/widget/TextView;
    :goto_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numberFrameLayouts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 1117
    .local v4, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1118
    .restart local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x41880000    # 17.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v15, v17

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1119
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    const/high16 v18, 0x41c80000    # 25.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1120
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c3

    .line 1036
    .end local v2    # "a":I
    .end local v3    # "col":I
    .end local v4    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "height":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "num":I
    .end local v10    # "row":I
    .end local v11    # "sizeBetweenNumbersX":I
    .end local v12    # "sizeBetweenNumbersY":I
    .end local v15    # "top":I
    :cond_170
    sget v17, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_18

    .restart local v5    # "height":I
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_174
    move/from16 v17, v16

    .line 1042
    goto/16 :goto_4c

    .line 1054
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_178
    const/4 v15, 0x0

    .line 1055
    .restart local v15    # "top":I
    const/4 v8, 0x0

    .line 1056
    .local v8, "left":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_1b6

    .line 1057
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_19c

    .line 1058
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v16, v17

    div-int/lit8 v8, v17, 0x2

    .line 1059
    const/high16 v17, 0x43f90000    # 498.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    .line 1061
    :cond_19c
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    move/from16 v0, v17

    if-le v5, v0, :cond_1b6

    .line 1062
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v15, v17, 0x2

    .line 1063
    const/high16 v17, 0x44040000    # 528.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1066
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1067
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1068
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1069
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1070
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->passwordFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1075
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v17, v5, 0x3

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1076
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1077
    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    sub-int v17, v5, v17

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1078
    move/from16 v0, v16

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a2

    .line 1090
    .end local v8    # "left":I
    .end local v15    # "top":I
    .restart local v2    # "a":I
    .restart local v11    # "sizeBetweenNumbersX":I
    .restart local v12    # "sizeBetweenNumbersY":I
    :cond_21b
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_225

    .line 1091
    const/16 v9, 0xb

    .restart local v9    # "num":I
    goto/16 :goto_cd

    .line 1093
    .end local v9    # "num":I
    :cond_225
    add-int/lit8 v9, v2, -0x1

    .restart local v9    # "num":I
    goto/16 :goto_cd

    .line 1109
    .restart local v3    # "col":I
    .restart local v10    # "row":I
    :cond_229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1110
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v10

    add-int v17, v17, v12

    const/high16 v18, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v15, v17, v18

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1111
    .restart local v15    # "top":I
    const/high16 v17, 0x42480000    # 50.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v17, v17, v11

    mul-int v17, v17, v3

    add-int v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1112
    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v15, v15, v17

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView;->eraseView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_139

    .line 1123
    .end local v3    # "col":I
    .end local v9    # "num":I
    .end local v10    # "row":I
    .end local v15    # "top":I
    :cond_270
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1124
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 821
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_14

    .line 823
    :try_start_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 824
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 826
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->fingerprintDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_27

    .line 832
    :cond_14
    :goto_14
    :try_start_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_26

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v1, :cond_26

    .line 833
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_2c

    .line 839
    :cond_26
    :goto_26
    return-void

    .line 827
    :catch_27
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2c
    move-exception v0

    .line 837
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 802
    sget v0, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 807
    :cond_13
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$9;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 817
    :cond_1d
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    .line 818
    return-void
.end method

.method public onShow()V
    .registers 12

    .prologue
    const v10, 0xf4241

    const v6, -0xae8362

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 952
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 953
    .local v1, "parentActivity":Landroid/app/Activity;
    sget v4, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v4, v8, :cond_2c

    .line 954
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_22

    .line 955
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 956
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 967
    :cond_22
    :goto_22
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V

    .line 968
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_45

    .line 1020
    :goto_2b
    return-void

    .line 959
    :cond_2c
    if-eqz v1, :cond_22

    .line 960
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 961
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_22

    .line 962
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 963
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_22

    .line 971
    .end local v0    # "currentFocus":Landroid/view/View;
    :cond_45
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PasscodeView;->setAlpha(F)V

    .line 972
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PasscodeView;->setTranslationY(F)V

    .line 973
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 974
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "selectedBackground"

    invoke-interface {v2, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 975
    .local v3, "selectedBackground":I
    if-ne v3, v10, :cond_aa

    .line 976
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 986
    :goto_63
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passcodeTextView:Landroid/widget/TextView;

    const-string v5, "EnterYourPasscode"

    const v6, 0x7f07020f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    sget v4, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v4, :cond_c2

    .line 995
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 996
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 997
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setVisibility(I)V

    .line 998
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1009
    :cond_89
    :goto_89
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/PasscodeView;->setVisibility(I)V

    .line 1010
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1011
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # invokes: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V

    .line 1014
    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PasscodeView$12;-><init>(Lorg/telegram/ui/Components/PasscodeView;)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PasscodeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2b

    .line 978
    :cond_aa
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 979
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_bc

    .line 980
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_63

    .line 982
    :cond_bc
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->backgroundFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_63

    .line 999
    :cond_c2
    sget v4, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v4, v8, :cond_89

    .line 1000
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    new-array v5, v7, [Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1001
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1002
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1003
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1004
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1005
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1006
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->setVisibility(I)V

    .line 1007
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView;->checkImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_89
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    .prologue
    .line 730
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView;->delegate:Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;

    .line 731
    return-void
.end method
