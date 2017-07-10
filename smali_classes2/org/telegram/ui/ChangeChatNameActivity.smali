.class public Lorg/telegram/ui/ChangeChatNameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeChatNameActivity.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private chat_id:I

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private headerLabelView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/ChangeChatNameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method private saveName()V
    .registers 4

    .prologue
    .line 158
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chat_id:I

    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(ILjava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200dd

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "EditName"

    const v5, 0x7f0701ee

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ChangeChatNameActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeChatNameActivity$1;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 80
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v1, 0x7f020114

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v8, v10, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->doneButton:Landroid/view/View;

    .line 82
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 84
    .local v6, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    iput-object v7, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    new-instance v4, Lorg/telegram/ui/ChangeChatNameActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeChatNameActivity$2;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v1, v10, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v4, "windowBackgroundWhiteHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {p1, v9}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 103
    iget-object v4, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_10d

    const/4 v1, 0x5

    :goto_b5
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const v4, 0x2c000

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_cd

    const/4 v3, 0x5

    :cond_cd
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 108
    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeChatNameActivity$3;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    iget-object v9, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const/16 v1, 0x24

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chat_id:I

    if-lez v0, :cond_10f

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v1, "GroupName"

    const v2, 0x7f07026f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    :goto_ff
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_10d
    move v1, v3

    .line 103
    goto :goto_b5

    .line 124
    :cond_10f
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v1, "EnterListName"

    const v2, 0x7f07020b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_ff
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 163
    const/16 v0, 0x9

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteBlackText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v7, "windowBackgroundWhiteInputField"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteInputFieldActivated"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onFragmentCreate()Z
    .registers 4

    .prologue
    .line 55
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeChatNameActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chat_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChangeChatNameActivity;->chat_id:I

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 133
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 134
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, "animations":Z
    if-nez v0, :cond_1f

    .line 137
    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 138
    iget-object v2, p0, Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 140
    :cond_1f
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 7
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_c

    .line 145
    new-instance v0, Lorg/telegram/ui/ChangeChatNameActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeChatNameActivity$4;-><init>(Lorg/telegram/ui/ChangeChatNameActivity;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 155
    :cond_c
    return-void
.end method
