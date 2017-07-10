.class public Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityRegisterView"
.end annotation


# instance fields
.field private currentParams:Landroid/os/Bundle;

.field private firstNameField:Landroid/widget/EditText;

.field private lastNameField:Landroid/widget/EditText;

.field private nextPressed:Z

.field private phoneCode:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private requestPhone:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .registers 12
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2675
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 2676
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 2673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    .line 2678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->setOrientation(I)V

    .line 2680
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const-string v1, "RegisterText"

    const v2, 0x7f070479

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2683
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1b2

    const/4 v0, 0x5

    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2685
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1b5

    const/4 v2, 0x5

    :goto_47
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2687
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    .line 2688
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2689
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2690
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2691
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 2692
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string v1, "FirstName"

    const v2, 0x7f07021d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2693
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2694
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2695
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2696
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2697
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/high16 v3, 0x41d00000    # 26.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2698
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2709
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    .line 2710
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string v1, "LastName"

    const v2, 0x7f0702bd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2711
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2712
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2713
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2714
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 2715
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2717
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2718
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2719
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2721
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2722
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0x50

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2723
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2725
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    .line 2726
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const-string v1, "CancelRegistration"

    const v2, 0x7f070103

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2727
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1b8

    const/4 v0, 0x5

    :goto_15c
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2729
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2730
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2731
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2732
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1ba

    const/4 v2, 0x5

    :goto_199
    or-int/lit8 v2, v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2733
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2750
    return-void

    .line 2683
    .end local v7    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1b2
    const/4 v0, 0x3

    goto/16 :goto_33

    .line 2685
    :cond_1b5
    const/4 v2, 0x3

    goto/16 :goto_47

    .line 2727
    .restart local v7    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1b8
    const/4 v0, 0x3

    goto :goto_15c

    .line 2732
    :cond_1ba
    const/4 v2, 0x3

    goto :goto_199
.end method

.method static synthetic access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .prologue
    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
    .param p1, "x1"    # Z

    .prologue
    .line 2663
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .prologue
    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .prologue
    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .prologue
    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2759
    const-string v0, "YourName"

    const v1, 0x7f0705ca

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 2754
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    .line 2755
    return-void
.end method

.method public onNextPressed()V
    .registers 5

    .prologue
    .line 2786
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    if-eqz v1, :cond_5

    .line 2841
    :goto_4
    return-void

    .line 2789
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    .line 2790
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;-><init>()V

    .line 2791
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneCode:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_code:Ljava/lang/String;

    .line 2792
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_code_hash:Ljava/lang/String;

    .line 2793
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_number:Ljava/lang/String;

    .line 2794
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->first_name:Ljava/lang/String;

    .line 2795
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->last_name:Ljava/lang/String;

    .line 2796
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 2797
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_4
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 2764
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 2765
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 2766
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2767
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2769
    :cond_17
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2860
    const-string v2, "registerview_params"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    .line 2861
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v2, :cond_12

    .line 2862
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->setParams(Landroid/os/Bundle;Z)V

    .line 2864
    :cond_12
    const-string v2, "registerview_first"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2865
    .local v0, "first":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 2866
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2868
    :cond_1f
    const-string v2, "registerview_last"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2869
    .local v1, "last":Ljava/lang/String;
    if-eqz v1, :cond_2c

    .line 2870
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2872
    :cond_2c
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2845
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, "first":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 2847
    const-string v2, "registerview_first"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2850
    .local v1, "last":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 2851
    const-string v2, "registerview_last"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    :cond_2a
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v2, :cond_35

    .line 2854
    const-string v2, "registerview_params"

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2856
    :cond_35
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    .line 2773
    if-nez p1, :cond_3

    .line 2782
    :goto_2
    return-void

    .line 2776
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    .line 2779
    const-string v0, "phoneHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    .line 2780
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneCode:Ljava/lang/String;

    .line 2781
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    goto :goto_2
.end method
