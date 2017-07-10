.class public Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "ChangePhoneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangePhoneActivity;
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

.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V
    .registers 24
    .param p1, "this$0"    # Lorg/telegram/ui/ChangePhoneActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 333
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 336
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreSelection:Z

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z

    .line 348
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->setOrientation(I)V

    .line 350
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

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

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_452

    const/4 v2, 0x5

    :goto_ae
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const v3, 0x7f020259

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$1;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->view:Landroid/view/View;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->view:Landroid/view/View;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->view:Landroid/view/View;

    const-string v3, "windowBackgroundWhiteGrayLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->view:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x3e740000    # -17.5f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 389
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

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 407
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 408
    .local v14, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

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

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$2;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$3;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 499
    new-instance v2, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setInputType(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setTextColor(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintTextColor(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setPadding(IIII)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/HintEditText;->setTextSize(IF)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setMaxLines(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setGravity(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setImeOptions(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, -0x1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$5;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 596
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string v3, "ChangePhoneHelp"

    const v4, 0x7f070109

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string v3, "windowBackgroundWhiteGrayText6"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_455

    const/4 v2, 0x5

    :goto_311
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_458

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

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v15, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_347
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 608
    .local v18, "reader":Ljava/io/BufferedReader;
    :goto_361
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-eqz v16, :cond_45b

    .line 609
    const-string v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 610
    .local v9, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v9, v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    array-length v2, v9

    const/4 v3, 0x3

    if-le v2, v3, :cond_3a5

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x3

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_3a5
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_3ae} :catch_3af

    goto :goto_361

    .line 619
    .end local v9    # "args":[Ljava/lang/String;
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    :catch_3af
    move-exception v12

    .line 620
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 623
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_3b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$6;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 630
    const/4 v10, 0x0

    .line 633
    .local v10, "country":Ljava/lang/String;
    :try_start_3c4
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 634
    .local v19, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v19, :cond_3d8

    .line 635
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3c4 .. :try_end_3d7} :catch_460

    move-result-object v10

    .line 641
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3d8
    :goto_3d8
    if-eqz v10, :cond_403

    .line 642
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 643
    .local v11, "countryName":Ljava/lang/String;
    if-eqz v11, :cond_403

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 645
    .local v13, "index":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_403

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    .line 651
    .end local v11    # "countryName":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_42a

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string v3, "ChooseCountry"

    const v4, 0x7f070175

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    .line 657
    :cond_42a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_466

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 665
    :goto_451
    return-void

    .line 357
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    .end local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_452
    const/4 v2, 0x3

    goto/16 :goto_ae

    .line 600
    .restart local v14    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_455
    const/4 v2, 0x3

    goto/16 :goto_311

    .line 602
    :cond_458
    const/4 v4, 0x3

    goto/16 :goto_331

    .line 618
    .restart local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :cond_45b
    :try_start_45b
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_45b .. :try_end_45e} :catch_3af

    goto/16 :goto_3b3

    .line 637
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "country":Ljava/lang/String;
    :catch_460
    move-exception v12

    .line 638
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3d8

    .line 662
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_451
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->textView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    .param p1, "x1"    # I

    .prologue
    .line 324
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangePhoneActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 819
    const-string v0, "ChangePhoneNewNumber"

    const v1, 0x7f07010a

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

    .line 683
    iget-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreSelection:Z

    if-eqz v1, :cond_8

    .line 684
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreSelection:Z

    .line 691
    :goto_7
    return-void

    .line 687
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    goto :goto_7
.end method

.method public onNextPressed()V
    .registers 15

    .prologue
    .line 700
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-boolean v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z

    if-eqz v11, :cond_d

    .line 800
    :cond_c
    :goto_c
    return-void

    .line 703
    :cond_d
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 704
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_10d

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    if-eqz v11, :cond_10d

    const/4 v9, 0x1

    .line 705
    .local v9, "simcardAvailable":Z
    :goto_25
    const/4 v0, 0x1

    .line 706
    .local v0, "allowCall":Z
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_156

    if-eqz v9, :cond_156

    .line 707
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_110

    const/4 v0, 0x1

    .line 708
    :goto_3d
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_113

    const/4 v1, 0x1

    .line 709
    .local v1, "allowSms":Z
    :goto_4c
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->checkPermissions:Z
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1200(Lorg/telegram/ui/ChangePhoneActivity;)Z

    move-result v11

    if-eqz v11, :cond_156

    .line 710
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 711
    if-nez v0, :cond_6a

    .line 712
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_6a
    if-nez v1, :cond_77

    .line 715
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_77
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_156

    .line 718
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "mainconfig"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 719
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string v11, "firstlogin"

    const/4 v12, 0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_b1

    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b1

    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_132

    .line 720
    :cond_b1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "firstlogin"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v11, "AppName"

    const v12, 0x7f070092

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 723
    const-string v11, "OK"

    const v12, 0x7f0703d4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 724
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_116

    .line 725
    const-string v11, "AllowReadCallAndSms"

    const v12, 0x7f07007e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 731
    :goto_fc
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v12, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ChangePhoneActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v12

    # setter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsDialog:Landroid/app/Dialog;
    invoke-static {v11, v12}, Lorg/telegram/ui/ChangePhoneActivity;->access$1402(Lorg/telegram/ui/ChangePhoneActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 704
    .end local v0    # "allowCall":Z
    .end local v1    # "allowSms":Z
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "simcardAvailable":Z
    :cond_10d
    const/4 v9, 0x0

    goto/16 :goto_25

    .line 707
    .restart local v0    # "allowCall":Z
    .restart local v9    # "simcardAvailable":Z
    :cond_110
    const/4 v0, 0x0

    goto/16 :goto_3d

    .line 708
    :cond_113
    const/4 v1, 0x0

    goto/16 :goto_4c

    .line 726
    .restart local v1    # "allowSms":Z
    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v7    # "preferences":Landroid/content/SharedPreferences;
    :cond_116
    if-nez v1, :cond_125

    .line 727
    const-string v11, "AllowReadSms"

    const v12, 0x7f07007f

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_fc

    .line 729
    :cond_125
    const-string v11, "AllowReadCall"

    const v12, 0x7f07007d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_fc

    .line 733
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_132
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v13, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static {v13}, Lorg/telegram/ui/ChangePhoneActivity;->access$1300(Lorg/telegram/ui/ChangePhoneActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v13, 0x6

    invoke-virtual {v12, v11, v13}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 740
    .end local v1    # "allowSms":Z
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :cond_156
    iget v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16b

    .line 741
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string v12, "ChooseCountry"

    const v13, 0x7f070175

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 743
    :cond_16b
    iget v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_184

    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v11, :cond_184

    .line 744
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string v12, "WrongCountry"

    const v13, 0x7f0705b2

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 747
    :cond_184
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v11

    if-nez v11, :cond_19c

    .line 748
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string v12, "InvalidPhoneNumber"

    const v13, 0x7f07029c

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 751
    :cond_19c
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;-><init>()V

    .line 752
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "phone":Ljava/lang/String;
    iput-object v6, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->phone_number:Ljava/lang/String;

    .line 754
    if-eqz v9, :cond_27c

    if-eqz v0, :cond_27c

    const/4 v11, 0x1

    :goto_1cf
    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->allow_flashcall:Z

    .line 755
    iget-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->allow_flashcall:Z

    if-eqz v11, :cond_1f5

    .line 757
    :try_start_1d5
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_282

    .line 759
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1eb

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_27f

    :cond_1eb
    const/4 v11, 0x1

    :goto_1ec
    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->current_number:Z

    .line 760
    iget-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->current_number:Z

    if-nez v11, :cond_1f5

    .line 761
    const/4 v11, 0x0

    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->allow_flashcall:Z
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1f5} :catch_287

    .line 772
    .end local v4    # "number":Ljava/lang/String;
    :cond_1f5
    :goto_1f5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v5, "params":Landroid/os/Bundle;
    const-string v11, "phone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :try_start_222
    const-string v11, "ephone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_260} :catch_290

    .line 780
    :goto_260
    const-string v11, "phoneFormated"

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->nextPressed:Z

    .line 782
    iget-object v11, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChangePhoneActivity;->needShowProgress()V

    .line 783
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;

    invoke-direct {v12, p0, v5, v8}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$7;-><init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;)V

    const/4 v13, 0x2

    invoke-virtual {v11, v8, v12, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_c

    .line 754
    .end local v5    # "params":Landroid/os/Bundle;
    :cond_27c
    const/4 v11, 0x0

    goto/16 :goto_1cf

    .line 759
    .restart local v4    # "number":Ljava/lang/String;
    :cond_27f
    const/4 v11, 0x0

    goto/16 :goto_1ec

    .line 764
    :cond_282
    const/4 v11, 0x0

    :try_start_283
    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->current_number:Z
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_285} :catch_287

    goto/16 :goto_1f5

    .line 766
    .end local v4    # "number":Ljava/lang/String;
    :catch_287
    move-exception v3

    .line 767
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->allow_flashcall:Z

    .line 768
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1f5

    .line 776
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "params":Landroid/os/Bundle;
    :catch_290
    move-exception v3

    .line 777
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 778
    const-string v11, "ephone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_260
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
    .line 696
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShow()V
    .registers 3

    .prologue
    .line 804
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v0, :cond_24

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_25

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 815
    :cond_24
    :goto_24
    return-void

    .line 811
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_24
.end method

.method public selectCountry(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 668
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 669
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 670
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    .line 671
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 675
    .local v1, "hint":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v1, :cond_3b

    const/16 v3, 0x58

    const/16 v5, 0x2013

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_33
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 676
    iput v6, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->countryState:I

    .line 677
    iput-boolean v6, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnTextChange:Z

    .line 679
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    :cond_3a
    return-void

    .line 675
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "hint":Ljava/lang/String;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_33
.end method
