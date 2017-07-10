.class public Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private codeField:Landroid/widget/EditText;

.field private volatile codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private ignoreOnTextChange:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private nextPressed:Z

.field private nextType:I

.field private openTime:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private problemText:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

.field private volatile time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private waitingForEvent:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/content/Context;I)V
    .registers 14
    .param p1, "this$0"    # Lorg/telegram/ui/CancelAccountDeletionActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 456
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    .line 457
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    .line 442
    const v0, 0xea60

    iput v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I

    .line 443
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 452
    const-string v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 459
    iput p3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->setOrientation(I)V

    .line 462
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_218

    const/4 v0, 0x5

    :goto_44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 468
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24e

    .line 469
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 471
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 472
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f02020e

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_21e

    .line 474
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x13

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_21b

    const/4 v2, 0x5

    :goto_8b
    const/high16 v3, 0x42a40000    # 82.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    :goto_97
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_24b

    const/4 v0, 0x5

    :goto_9e
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :goto_a5
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "Code"

    const v2, 0x7f070181

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Lorg/telegram/ui/CancelAccountDeletionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Lorg/telegram/ui/CancelAccountDeletionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 528
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_142

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 534
    :cond_142
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 538
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_262

    const/4 v0, 0x5

    :goto_171
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 539
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_265

    const/4 v2, 0x5

    :goto_17d
    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a5

    .line 542
    new-instance v0, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    .line 543
    iget-object v6, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_1a5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "DidNotGetTheCode"

    const v2, 0x7f0701e2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_268

    const/4 v0, 0x5

    :goto_1c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 553
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_26b

    const/4 v2, 0x5

    :goto_201
    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Lorg/telegram/ui/CancelAccountDeletionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    return-void

    .line 465
    :cond_218
    const/4 v0, 0x3

    goto/16 :goto_44

    .line 475
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_21b
    const/4 v2, 0x3

    goto/16 :goto_8b

    .line 477
    :cond_21e
    iget-object v9, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_249

    const/4 v2, 0x5

    :goto_228
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a40000    # 82.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const/16 v0, 0x40

    const/high16 v1, 0x42980000    # 76.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_97

    .line 477
    :cond_249
    const/4 v2, 0x3

    goto :goto_228

    .line 480
    :cond_24b
    const/4 v0, 0x3

    goto/16 :goto_9e

    .line 482
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_24e
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_260

    const/4 v0, 0x5

    :goto_257
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a5

    :cond_260
    const/4 v0, 0x3

    goto :goto_257

    .line 538
    :cond_262
    const/4 v0, 0x3

    goto/16 :goto_171

    .line 539
    :cond_265
    const/4 v2, 0x3

    goto/16 :goto_17d

    .line 548
    :cond_268
    const/4 v0, 0x3

    goto/16 :goto_1c1

    .line 553
    :cond_26b
    const/4 v2, 0x3

    goto :goto_201
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->resendCode()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 427
    iput-wide p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 427
    iput p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 427
    iput-wide p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 427
    iput p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeout:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createTimer()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->length:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method private createCodeTimer()V
    .registers 7

    .prologue
    .line 703
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 727
    :goto_4
    return-void

    .line 706
    :cond_5
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTime:I

    .line 707
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private createTimer()V
    .registers 7

    .prologue
    .line 743
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 815
    :goto_4
    return-void

    .line 746
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private destroyCodeTimer()V
    .registers 4

    .prologue
    .line 731
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 732
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 733
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 734
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 736
    :cond_f
    monitor-exit v2

    .line 740
    :goto_10
    return-void

    .line 736
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 737
    :catch_14
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private destroyTimer()V
    .registers 4

    .prologue
    .line 819
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 820
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 821
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 822
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 824
    :cond_f
    monitor-exit v2

    .line 828
    :goto_10
    return-void

    .line 824
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 825
    :catch_14
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private resendCode()V
    .registers 6

    .prologue
    .line 582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity;->needShowProgress()V

    .line 588
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 589
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 590
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 591
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$4;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 608
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 908
    iget-boolean v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-nez v1, :cond_b

    .line 926
    :cond_a
    :goto_a
    return-void

    .line 911
    :cond_b
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    if-ne p1, v1, :cond_31

    .line 912
    iput-boolean v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 913
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iput-boolean v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 915
    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a

    .line 916
    :cond_31
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, v1, :cond_a

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 921
    iput-boolean v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 922
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iput-boolean v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 924
    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 612
    const-string v0, "CancelAccountReset"

    const v1, 0x7f0700ff

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyActivity()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 884
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 885
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 886
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 887
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 892
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 893
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyTimer()V

    .line 894
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 895
    return-void

    .line 888
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 889
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 890
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_15
.end method

.method public onNextPressed()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 832
    iget-boolean v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v1, :cond_7

    .line 880
    :goto_6
    return-void

    .line 835
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextPressed:Z

    .line 836
    iget v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v4, :cond_46

    .line 837
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 843
    :cond_1a
    :goto_1a
    iput-boolean v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 844
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;-><init>()V

    .line 845
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code:Ljava/lang/String;

    .line 846
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code_hash:Ljava/lang/String;

    .line 847
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyTimer()V

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity;->needShowProgress()V

    .line 849
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_6

    .line 839
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;
    :cond_46
    iget v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 840
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 841
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1a
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 899
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 904
    :cond_17
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 13
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 617
    if-nez p1, :cond_3

    .line 700
    :cond_2
    :goto_2
    return-void

    .line 620
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 622
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f2

    .line 623
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 624
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 630
    :cond_1f
    :goto_1f
    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 631
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 632
    const-string v3, "phoneHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 633
    const-string v3, "timeout"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I

    iput v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeout:I

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->openTime:I

    .line 635
    const-string v3, "nextType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    .line 636
    const-string v3, "pattern"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 637
    const-string v3, "length"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->length:I

    .line 639
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->length:I

    if-eqz v3, :cond_106

    .line 640
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/text/InputFilter;

    .line 641
    .local v0, "inputFilters":[Landroid/text/InputFilter;
    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->length:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    .line 642
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 646
    .end local v0    # "inputFilters":[Landroid/text/InputFilter;
    :goto_73
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    if-eqz v3, :cond_81

    .line 647
    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    if-eqz v3, :cond_110

    const/4 v3, 0x0

    :goto_7e
    invoke-virtual {v4, v3}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->setVisibility(I)V

    .line 650
    :cond_81
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 654
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "number":Ljava/lang/String;
    const-string v3, "CancelAccountResetInfo"

    const v4, 0x7f070100

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 665
    .local v2, "str":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_114

    .line 668
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 669
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 674
    :goto_d1
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyTimer()V

    .line 675
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 678
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11a

    .line 679
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 625
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/CharSequence;
    :cond_f2
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    .line 626
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 627
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto/16 :goto_1f

    .line 644
    :cond_106
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/text/InputFilter;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_73

    .line 647
    :cond_110
    const/16 v3, 0x8

    goto/16 :goto_7e

    .line 671
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    :cond_114
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_d1

    .line 681
    :cond_11a
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_188

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_129

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_188

    .line 682
    :cond_129
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_161

    .line 685
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v4, "CallText"

    const v5, 0x7f0700f8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :cond_15c
    :goto_15c
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_2

    .line 686
    :cond_161
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15c

    .line 687
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v4, "SmsText"

    const v5, 0x7f070516

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15c

    .line 690
    :cond_188
    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d2

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_197

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d2

    .line 691
    :cond_197
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v4, "CallText"

    const v5, 0x7f0700f8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I

    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_1cf

    const/4 v3, 0x0

    :goto_1c7
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_2

    .line 693
    :cond_1cf
    const/16 v3, 0x8

    goto :goto_1c7

    .line 696
    :cond_1d2
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v3, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    invoke-direct {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createCodeTimer()V

    goto/16 :goto_2
.end method
