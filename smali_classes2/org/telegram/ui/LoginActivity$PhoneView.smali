.class public Lorg/telegram/ui/LoginActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private codeField:Landroid/widget/EditText;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryButton:Landroid/widget/TextView;

.field private countryState:I

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private nextPressed:Z

.field private phoneField:Lorg/telegram/ui/Components/HintEditText;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .registers 24
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 591
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 582
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    .line 583
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 584
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 586
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 587
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 594
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setOrientation(I)V

    .line 596
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_44b

    const/4 v2, 0x5

    :goto_ae
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const v3, 0x7f020259

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const-string v3, "windowBackgroundWhiteGrayLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x3e740000    # -17.5f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 634
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 635
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 653
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 654
    .local v14, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v2, 0x37

    const/16 v3, 0x24

    const/high16 v4, -0x3ef00000    # -9.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 743
    new-instance v2, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setInputType(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setTextColor(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintTextColor(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setPadding(IIII)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/HintEditText;->setTextSize(IF)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setMaxLines(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setGravity(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setImeOptions(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, -0x1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 840
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string v3, "StartText"

    const v4, 0x7f07051f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteGrayText6"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_44e

    const/4 v2, 0x5

    :goto_311
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_451

    const/4 v4, 0x5

    :goto_331
    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 850
    .local v15, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_347
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 852
    .local v18, "reader":Ljava/io/BufferedReader;
    :goto_361
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-eqz v16, :cond_454

    .line 853
    const-string v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v9, v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    array-length v2, v9

    const/4 v3, 0x3

    if-le v2, v3, :cond_3a5

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x3

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_3a5
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_3ae} :catch_3af

    goto :goto_361

    .line 863
    .end local v9    # "args":[Ljava/lang/String;
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    :catch_3af
    move-exception v12

    .line 864
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 867
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_3b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    const/4 v10, 0x0

    .line 877
    .local v10, "country":Ljava/lang/String;
    :try_start_3c4
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 878
    .local v19, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v19, :cond_3d8

    .line 879
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3c4 .. :try_end_3d7} :catch_459

    move-result-object v10

    .line 885
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3d8
    :goto_3d8
    if-eqz v10, :cond_403

    .line 886
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 887
    .local v11, "countryName":Ljava/lang/String;
    if-eqz v11, :cond_403

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 889
    .local v13, "index":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_403

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 895
    .end local v11    # "countryName":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_42a

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string v3, "ChooseCountry"

    const v4, 0x7f070175

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 898
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 901
    :cond_42a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_45f

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 907
    :goto_44a
    return-void

    .line 603
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    .end local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_44b
    const/4 v2, 0x3

    goto/16 :goto_ae

    .line 844
    .restart local v14    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_44e
    const/4 v2, 0x3

    goto/16 :goto_311

    .line 846
    :cond_451
    const/4 v4, 0x3

    goto/16 :goto_331

    .line 862
    .restart local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :cond_454
    :try_start_454
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_457
    .catch Ljava/lang/Exception; {:try_start_454 .. :try_end_457} :catch_3af

    goto/16 :goto_3b3

    .line 881
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "country":Ljava/lang/String;
    :catch_459
    move-exception v12

    .line 882
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d8

    .line 905
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_45f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_44a
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/LoginActivity$PhoneView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # I

    .prologue
    .line 570
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public fillNumber()V
    .registers 16

    .prologue
    .line 1081
    :try_start_0
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 1082
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f3

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    if-eqz v12, :cond_f3

    .line 1083
    const/4 v1, 0x1

    .line 1084
    .local v1, "allowCall":Z
    const/4 v2, 0x1

    .line 1085
    .local v2, "allowSms":Z
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_122

    .line 1086
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f4

    const/4 v1, 0x1

    .line 1087
    :goto_2e
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f7

    const/4 v2, 0x1

    .line 1088
    :goto_3d
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2100(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eqz v12, :cond_122

    if-nez v1, :cond_122

    if-nez v2, :cond_122

    .line 1089
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1090
    if-nez v1, :cond_5f

    .line 1091
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_5f
    if-nez v2, :cond_6c

    .line 1094
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_6c
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f3

    .line 1097
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1098
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v12, "firstloginshow"

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_a6

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a6

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_fa

    .line 1099
    :cond_a6
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "firstloginshow"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1100
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v3, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v12, "AppName"

    const v13, 0x7f070092

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1102
    const-string v12, "OK"

    const v13, 0x7f0703d4

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1103
    const-string v12, "AllowFillNumber"

    const v13, 0x7f07007c

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1104
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v13, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v13

    # setter for: Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;
    invoke-static {v12, v13}, Lorg/telegram/ui/LoginActivity;->access$2302(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1144
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v3    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_f3
    :goto_f3
    return-void

    .line 1086
    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_f4
    const/4 v1, 0x0

    goto/16 :goto_2e

    .line 1087
    :cond_f7
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 1106
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_fa
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v14, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v14, 0x7

    invoke-virtual {v13, v12, v14}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11c} :catch_11d

    goto :goto_f3

    .line 1141
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catch_11d
    move-exception v5

    .line 1142
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f3

    .line 1112
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_122
    if-nez v1, :cond_126

    if-eqz v2, :cond_f3

    .line 1113
    :cond_126
    :try_start_126
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1114
    .local v6, "number":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1115
    .local v10, "textToSet":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1116
    .local v7, "ok":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f3

    .line 1117
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_174

    .line 1118
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_13e
    const/4 v12, 0x1

    if-lt v0, v12, :cond_15e

    .line 1119
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1120
    .local v9, "sub":Ljava/lang/String;
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1121
    .local v4, "country":Ljava/lang/String;
    if-eqz v4, :cond_18d

    .line 1122
    const/4 v7, 0x1

    .line 1123
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1124
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    .end local v4    # "country":Ljava/lang/String;
    .end local v9    # "sub":Ljava/lang/String;
    :cond_15e
    if-nez v7, :cond_174

    .line 1129
    const/4 v12, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1130
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    .end local v0    # "a":I
    :cond_174
    if-eqz v10, :cond_f3

    .line 1134
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1135
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v13, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_18b} :catch_11d

    goto/16 :goto_f3

    .line 1118
    .restart local v0    # "a":I
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v9    # "sub":Ljava/lang/String;
    :cond_18d
    add-int/lit8 v0, v0, -0x1

    goto :goto_13e
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1165
    const-string v0, "YourPhone"

    const v1, 0x7f0705ce

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 925
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    if-eqz v1, :cond_8

    .line 926
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 933
    :goto_7
    return-void

    .line 929
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    goto :goto_7
.end method

.method public onNextPressed()V
    .registers 22

    .prologue
    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1077
    :cond_14
    :goto_14
    return-void

    .line 945
    :cond_15
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 946
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16b

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    if-eqz v17, :cond_16b

    const/4 v15, 0x1

    .line 947
    .local v15, "simcardAvailable":Z
    :goto_32
    const/4 v3, 0x1

    .line 948
    .local v3, "allowCall":Z
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_140

    if-eqz v15, :cond_140

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_16e

    const/4 v3, 0x1

    .line 950
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_171

    const/4 v5, 0x1

    .line 951
    .local v5, "allowSms":Z
    :goto_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "android.permission.CALL_PHONE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_174

    const/4 v4, 0x1

    .line 952
    .local v4, "allowCancelCall":Z
    :goto_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->checkPermissions:Z
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v17

    if-eqz v17, :cond_140

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 954
    if-nez v3, :cond_a2

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_a2
    if-nez v5, :cond_b3

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_b3
    if-nez v4, :cond_e2

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v18, "android.permission.CALL_PHONE"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v18, "android.permission.WRITE_CALL_LOG"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v18, "android.permission.READ_CALL_LOG"

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_e2
    const/4 v10, 0x1

    .line 966
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_140

    .line 967
    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v18, "mainconfig"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 968
    .local v13, "preferences":Landroid/content/SharedPreferences;
    if-nez v4, :cond_177

    if-eqz v3, :cond_177

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    const/16 v19, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 990
    :goto_13e
    if-nez v10, :cond_14

    .line 997
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_140
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_289

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ChooseCountry"

    const v20, 0x7f070175

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 946
    .end local v3    # "allowCall":Z
    .end local v15    # "simcardAvailable":Z
    :cond_16b
    const/4 v15, 0x0

    goto/16 :goto_32

    .line 949
    .restart local v3    # "allowCall":Z
    .restart local v15    # "simcardAvailable":Z
    :cond_16e
    const/4 v3, 0x0

    goto/16 :goto_52

    .line 950
    :cond_171
    const/4 v5, 0x0

    goto/16 :goto_65

    .line 951
    .restart local v5    # "allowSms":Z
    :cond_174
    const/4 v4, 0x0

    goto/16 :goto_78

    .line 970
    .restart local v4    # "allowCancelCall":Z
    .restart local v10    # "ok":Z
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_177
    const-string v17, "firstlogin"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_1a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_246

    .line 971
    :cond_1a9
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "firstlogin"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 972
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 973
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v17, "AppName"

    const v18, 0x7f070092

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 974
    const-string v17, "OK"

    const v18, 0x7f0703d4

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_226

    .line 976
    const-string v17, "AllowReadCallAndSms"

    const v18, 0x7f07007e

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 982
    :goto_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v18

    # setter for: Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;
    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_13e

    .line 977
    :cond_226
    if-nez v5, :cond_237

    .line 978
    const-string v17, "AllowReadSms"

    const v18, 0x7f07007f

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_20d

    .line 980
    :cond_237
    const-string v17, "AllowReadCall"

    const v18, 0x7f07007d

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_20d

    .line 985
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_246
    :try_start_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    const/16 v19, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_283} :catch_285

    goto/16 :goto_13e

    .line 986
    :catch_285
    move-exception v8

    .line 987
    .local v8, "ignore":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto/16 :goto_13e

    .line 1000
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v8    # "ignore":Ljava/lang/Exception;
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_289
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2ce

    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v17, :cond_2ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "999"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2ce

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "WrongCountry"

    const v20, 0x7f0705b2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1004
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->length()I

    move-result v17

    if-nez v17, :cond_2f7

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "InvalidPhoneNumber"

    const v20, 0x7f07029c

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1009
    :cond_2f7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    .line 1010
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 1011
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1012
    .local v12, "phone":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->applyCountryPortNumber(Ljava/lang/String;)V

    .line 1013
    sget-object v17, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 1014
    sget v17, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    move/from16 v0, v17

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 1015
    iput-object v12, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 1016
    if-eqz v15, :cond_436

    if-eqz v3, :cond_436

    const/16 v17, 0x1

    :goto_34f
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1017
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_381

    .line 1019
    :try_start_359
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v9

    .line 1020
    .local v9, "number":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_43e

    .line 1021
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_36f

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_43a

    :cond_36f
    const/16 v17, 0x1

    :goto_371
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    .line 1022
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    move/from16 v17, v0

    if-nez v17, :cond_381

    .line 1023
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_381} :catch_446

    .line 1033
    .end local v9    # "number":Ljava/lang/String;
    :cond_381
    :goto_381
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v11, "params":Landroid/os/Bundle;
    const-string v17, "phone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :try_start_3ba
    const-string v17, "ephone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_404
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_404} :catch_452

    .line 1041
    :goto_404
    const-string v17, "phoneFormated"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v17, v0

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1044
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/LoginActivity$PhoneView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/LoginActivity$PhoneView$7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;)V

    const/16 v19, 0x1b

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_14

    .line 1016
    .end local v11    # "params":Landroid/os/Bundle;
    :cond_436
    const/16 v17, 0x0

    goto/16 :goto_34f

    .line 1021
    .restart local v9    # "number":Ljava/lang/String;
    :cond_43a
    const/16 v17, 0x0

    goto/16 :goto_371

    .line 1026
    :cond_43e
    const/16 v17, 0x0

    :try_start_440
    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z
    :try_end_444
    .catch Ljava/lang/Exception; {:try_start_440 .. :try_end_444} :catch_446

    goto/16 :goto_381

    .line 1028
    .end local v9    # "number":Ljava/lang/String;
    :catch_446
    move-exception v7

    .line 1029
    .local v7, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1030
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_381

    .line 1037
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "params":Landroid/os/Bundle;
    :catch_452
    move-exception v7

    .line 1038
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1039
    const-string v17, "ephone"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_404
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 1148
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1149
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v0, :cond_24

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_28

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 1160
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 1161
    return-void

    .line 1155
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_24
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1182
    const-string v2, "phoneview_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_d
    const-string v2, "phoneview_phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "phone":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    :cond_1a
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 1172
    const-string v2, "phoneview_code"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "phone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 1176
    const-string v2, "phoneview_phone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_2a
    return-void
.end method

.method public selectCountry(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 910
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 911
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 912
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 913
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 914
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    .local v1, "hint":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v1, :cond_3b

    const/16 v3, 0x58

    const/16 v5, 0x2013

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_33
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 918
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 919
    iput-boolean v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 921
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    :cond_3a
    return-void

    .line 917
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "hint":Ljava/lang/String;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_33
.end method
