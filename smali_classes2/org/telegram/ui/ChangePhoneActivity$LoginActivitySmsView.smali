.class public Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "ChangePhoneActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangePhoneActivity;
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

.field private emailPhone:Ljava/lang/String;

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

.field private progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;

.field private volatile time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private timeout:I

.field private final timerSync:Ljava/lang/Object;

.field private waitingForEvent:Z

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;I)V
    .registers 15
    .param p1, "this$0"    # Lorg/telegram/ui/ChangePhoneActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 855
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    .line 856
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 840
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    .line 841
    const v0, 0xea60

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    .line 842
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    .line 848
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 851
    const-string v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 858
    iput p3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->setOrientation(I)V

    .line 861
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 864
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2a6

    const/4 v0, 0x5

    :goto_44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 867
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2dc

    .line 868
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 870
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 871
    .local v8, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f02020e

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 872
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2ac

    .line 873
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

    .line 874
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2a9

    const/4 v2, 0x5

    :goto_8b
    const/high16 v3, 0x42a40000    # 82.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    :goto_97
    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2d9

    const/4 v0, 0x5

    :goto_9e
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :goto_a5
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "Code"

    const v2, 0x7f070181

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 895
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 927
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_142

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 933
    :cond_142
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 937
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2f0

    const/4 v0, 0x5

    :goto_171
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 938
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2f3

    const/4 v2, 0x5

    :goto_17d
    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a5

    .line 941
    new-instance v0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    .line 942
    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    :cond_1a5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "DidNotGetTheCode"

    const v2, 0x7f0701e2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2f6

    const/4 v0, 0x5

    :goto_1c1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 952
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2f9

    const/4 v2, 0x5

    :goto_201
    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 980
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2fc

    const/4 v0, 0x5

    :goto_221
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 981
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2ff

    const/4 v0, 0x5

    :goto_22d
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_302

    const/4 v0, 0x5

    :goto_242
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 989
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_305

    const/4 v2, 0x5

    :goto_27f
    or-int/lit8 v2, v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    const-string v1, "WrongNumber"

    const v2, 0x7f0705b3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    return-void

    .line 864
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2a6
    const/4 v0, 0x3

    goto/16 :goto_44

    .line 874
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_2a9
    const/4 v2, 0x3

    goto/16 :goto_8b

    .line 876
    :cond_2ac
    iget-object v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2d7

    const/4 v2, 0x5

    :goto_2b6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42a40000    # 82.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
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

    .line 876
    :cond_2d7
    const/4 v2, 0x3

    goto :goto_2b6

    .line 879
    :cond_2d9
    const/4 v0, 0x3

    goto/16 :goto_9e

    .line 881
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    :cond_2dc
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2ee

    const/4 v0, 0x5

    :goto_2e5
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a5

    :cond_2ee
    const/4 v0, 0x3

    goto :goto_2e5

    .line 937
    :cond_2f0
    const/4 v0, 0x3

    goto/16 :goto_171

    .line 938
    :cond_2f3
    const/4 v2, 0x3

    goto/16 :goto_17d

    .line 947
    :cond_2f6
    const/4 v0, 0x3

    goto/16 :goto_1c1

    .line 952
    :cond_2f9
    const/4 v2, 0x3

    goto/16 :goto_201

    .line 980
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2fc
    const/4 v0, 0x3

    goto/16 :goto_221

    .line 981
    :cond_2ff
    const/4 v0, 0x3

    goto/16 :goto_22d

    .line 984
    :cond_302
    const/4 v0, 0x3

    goto/16 :goto_242

    .line 989
    :cond_305
    const/4 v2, 0x3

    goto/16 :goto_27f
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 823
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->resendCode()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 823
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 823
    iput-wide p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 823
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)D
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;D)D
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # D

    .prologue
    .line 823
    iput-wide p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    return v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # I

    .prologue
    .line 823
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Lorg/telegram/ui/ChangePhoneActivity$ProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeout:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;
    .param p1, "x1"    # Z

    .prologue
    .line 823
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    return p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    .prologue
    .line 823
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCodeTimer()V
    .registers 7

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 1163
    :goto_4
    return-void

    .line 1142
    :cond_5
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTime:I

    .line 1143
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private createTimer()V
    .registers 7

    .prologue
    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 1251
    :goto_4
    return-void

    .line 1182
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4
.end method

.method private destroyCodeTimer()V
    .registers 4

    .prologue
    .line 1167
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 1168
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 1169
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1170
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 1172
    :cond_f
    monitor-exit v2

    .line 1176
    :goto_10
    return-void

    .line 1172
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 1173
    :catch_14
    move-exception v0

    .line 1174
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private destroyTimer()V
    .registers 4

    .prologue
    .line 1255
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 1256
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 1257
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1258
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 1260
    :cond_f
    monitor-exit v2

    .line 1264
    :goto_10
    return-void

    .line 1260
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 1261
    :catch_14
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private resendCode()V
    .registers 6

    .prologue
    .line 1010
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "phone"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v2, "ephone"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v2, "phoneFormated"

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1016
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->needShowProgress()V

    .line 1018
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 1019
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 1020
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 1021
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$5;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1042
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

    .line 1370
    iget-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-nez v1, :cond_b

    .line 1388
    :cond_a
    :goto_a
    return-void

    .line 1373
    :cond_b
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    if-ne p1, v1, :cond_31

    .line 1374
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

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

    .line 1376
    iput-boolean v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1377
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a

    .line 1378
    :cond_31
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, v1, :cond_a

    .line 1379
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

    .line 1380
    .local v0, "num":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1383
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1384
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iput-boolean v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->ignoreOnTextChange:Z

    .line 1386
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->onNextPressed()V

    goto :goto_a
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1046
    const-string v0, "YourCode"

    const v1, 0x7f0705c2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1331
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1332
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1334
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1335
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1336
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1341
    :cond_1b
    :goto_1b
    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1342
    return-void

    .line 1337
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 1338
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1b
.end method

.method public onDestroyActivity()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1346
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 1347
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1348
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1354
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1355
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1356
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1357
    return-void

    .line 1350
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 1351
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1352
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

    .line 1268
    iget-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v1, :cond_7

    .line 1327
    :goto_6
    return-void

    .line 1271
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z

    .line 1272
    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v4, :cond_4a

    .line 1273
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1274
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1279
    :cond_1a
    :goto_1a
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1280
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;-><init>()V

    .line 1281
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_number:Ljava/lang/String;

    .line 1282
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code:Ljava/lang/String;

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code_hash:Ljava/lang/String;

    .line 1284
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1285
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChangePhoneActivity;->needShowProgress()V

    .line 1286
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_6

    .line 1275
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;
    :cond_4a
    iget v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 1276
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1277
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_1a
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 1361
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1366
    :cond_17
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 16
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    const/4 v12, 0x3

    const/16 v5, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1051
    if-nez p1, :cond_9

    .line 1136
    :cond_8
    :goto_8
    return-void

    .line 1054
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iput-boolean v10, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 1056
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_e3

    .line 1057
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1058
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1064
    :cond_22
    :goto_22
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 1065
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    .line 1066
    const-string v3, "ephone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    .line 1067
    const-string v3, "phoneFormated"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 1068
    const-string v3, "phoneHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    .line 1069
    const-string v3, "timeout"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeout:I

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->openTime:I

    .line 1071
    const-string v3, "nextType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    .line 1072
    const-string v3, "pattern"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 1073
    const-string v3, "length"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    .line 1075
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    if-eqz v3, :cond_f5

    .line 1076
    new-array v0, v10, [Landroid/text/InputFilter;

    .line 1077
    .local v0, "inputFilters":[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->length:I

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v4

    .line 1078
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1082
    .end local v0    # "inputFilters":[Landroid/text/InputFilter;
    :goto_84
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    if-eqz v3, :cond_92

    .line 1083
    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/ChangePhoneActivity$ProgressView;

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-eqz v3, :cond_fd

    move v3, v4

    :goto_8f
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->setVisibility(I)V

    .line 1086
    :cond_92
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 1090
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "number":Ljava/lang/String;
    const-string v2, ""

    .line 1092
    .local v2, "str":Ljava/lang/CharSequence;
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v10, :cond_ff

    .line 1093
    const-string v3, "SentAppCode"

    const v6, 0x7f0704e9

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1101
    :cond_b3
    :goto_b3
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-eq v3, v12, :cond_143

    .line 1104
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1105
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1110
    :goto_c6
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V

    .line 1111
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 1113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 1114
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v10, :cond_14a

    .line 1115
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1059
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/CharSequence;
    :cond_e3
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_22

    .line 1060
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1061
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto/16 :goto_22

    .line 1080
    :cond_f5
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    new-array v6, v4, [Landroid/text/InputFilter;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_84

    :cond_fd
    move v3, v5

    .line 1083
    goto :goto_8f

    .line 1094
    .restart local v1    # "number":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    :cond_ff
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_115

    .line 1095
    const-string v3, "SentSmsCode"

    const v6, 0x7f0704ec

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_b3

    .line 1096
    :cond_115
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_12b

    .line 1097
    const-string v3, "SentCallCode"

    const v6, 0x7f0704ea

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_b3

    .line 1098
    :cond_12b
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_b3

    .line 1099
    const-string v3, "SentCallOnly"

    const v6, 0x7f0704eb

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_b3

    .line 1107
    :cond_143
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_c6

    .line 1117
    :cond_14a
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v12, :cond_1a8

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_157

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v11, :cond_1a8

    .line 1118
    :cond_157
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_187

    .line 1121
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v5, "CallText"

    const v6, 0x7f0700f8

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    :cond_182
    :goto_182
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_8

    .line 1122
    :cond_187
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v11, :cond_182

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v5, "SmsText"

    const v6, 0x7f070516

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_182

    .line 1126
    :cond_1a8
    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v11, :cond_1e8

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1b5

    iget v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I

    if-ne v3, v12, :cond_1e8

    .line 1127
    :cond_1b5
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1128
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v6, "CallText"

    const v7, 0x7f0700f8

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    iget v6, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->time:I

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_1e6

    :goto_1de
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_8

    :cond_1e6
    move v4, v5

    .line 1129
    goto :goto_1de

    .line 1132
    :cond_1e8
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    invoke-direct {p0}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createCodeTimer()V

    goto/16 :goto_8
.end method
