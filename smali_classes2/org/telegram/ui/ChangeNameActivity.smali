.class public Lorg/telegram/ui/ChangeNameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeNameActivity.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private headerLabelView:Landroid/view/View;

.field private lastNameField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeNameActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/telegram/ui/ChangeNameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeNameActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeNameActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeNameActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method private saveName()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 163
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 164
    .local v0, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_18

    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_19

    .line 190
    :cond_18
    :goto_18
    return-void

    .line 167
    :cond_19
    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "newFirst":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "newLast":Ljava/lang/String;
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v5, :cond_45

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_45

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 172
    :cond_45
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    .line 173
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;
    const/4 v5, 0x3

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    .line 174
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 175
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 176
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 177
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_6f

    .line 178
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 179
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 181
    :cond_6f
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 182
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChangeNameActivity$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChangeNameActivity$5;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_18
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x5

    const/4 v0, -0x1

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v11, 0x1

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200dd

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "EditName"

    const v4, 0x7f0701ee

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$1;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 72
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 73
    .local v7, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v1, 0x7f020114

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v7, v11, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->doneButton:Landroid/view/View;

    .line 75
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 76
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v8, :cond_56

    .line 77
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 80
    :cond_56
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    iput-object v6, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$2;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_193

    move v1, v9

    :goto_bc
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const v3, 0xc000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v3, "FirstName"

    const v4, 0x7f07021d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 104
    iget-object v10, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    const/16 v1, 0x24

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/ChangeNameActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChangeNameActivity$3;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v11, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_196

    :goto_139
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const v3, 0xc000

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const-string v3, "LastName"

    const v4, 0x7f0702bd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 130
    iget-object v9, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    const/16 v1, 0x24

    const/high16 v3, 0x41800000    # 16.0f

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeNameActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeNameActivity$4;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    if-eqz v8, :cond_190

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_190
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 99
    :cond_193
    const/4 v1, 0x3

    goto/16 :goto_bc

    .line 125
    :cond_196
    const/4 v9, 0x3

    goto :goto_139
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 209
    const/16 v0, 0xd

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteBlackText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v7, "windowBackgroundWhiteInputField"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteInputFieldActivated"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteBlackText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v7, "windowBackgroundWhiteInputField"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeNameActivity;->lastNameField:Landroid/widget/EditText;

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

.method public onResume()V
    .registers 6

    .prologue
    .line 153
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 154
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "animations":Z
    if-nez v0, :cond_1f

    .line 157
    iget-object v2, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    iget-object v2, p0, Lorg/telegram/ui/ChangeNameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 160
    :cond_1f
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 7
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_c

    .line 195
    new-instance v0, Lorg/telegram/ui/ChangeNameActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeNameActivity$6;-><init>(Lorg/telegram/ui/ChangeNameActivity;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 205
    :cond_c
    return-void
.end method
