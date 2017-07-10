.class public Lorg/telegram/ui/Telehgram/OnlineContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "OnlineContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;
    }
.end annotation


# instance fields
.field private allowBots:Z

.field private allowUsernameSearch:Z

.field private chat_id:I

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

.field private destroyAfterSelect:Z

.field private emptyTextView:Landroid/widget/TextView;

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private onlyUsers:Z

.field private returnAsResult:Z

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z

    .line 79
    iput-boolean v1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowBots:Z

    .line 80
    iput-boolean v1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needForwardCount:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowUsernameSearch:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needPhonebook:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->returnAsResult:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->onlyUsers:Z

    return v0
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .registers 16
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "useAlert"    # Z
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p2, :cond_107

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v7, :cond_107

    .line 387
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_d

    .line 478
    :cond_c
    :goto_c
    return-void

    .line 390
    :cond_d
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_32

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v7, :cond_32

    .line 392
    :try_start_15
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "BotCantJoinGroups"

    const v9, 0x7f0700da

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2b

    goto :goto_c

    .line 393
    :catch_2b
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "tmessages"

    invoke-static {v7, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "AppName"

    const v8, 0x7f070092

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 400
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, "editText":Landroid/widget/EditText;
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_b0

    iget-boolean v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needForwardCount:Z

    if-eqz v7, :cond_b0

    .line 403
    const-string v7, "%s\n\n%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const-string v10, "AddToTheGroupForwardCount"

    const v11, 0x7f070077

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 404
    new-instance v2, Landroid/widget/EditText;

    .end local v2    # "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 405
    .restart local v2    # "editText":Landroid/widget/EditText;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_8d

    .line 406
    const v7, 0x1080019

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 408
    :cond_8d
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 409
    const-string v7, "50"

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 411
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 412
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 413
    move-object v3, v2

    .line 414
    .local v3, "editTextFinal":Landroid/widget/EditText;
    new-instance v7, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$5;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$5;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 448
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 450
    .end local v3    # "editTextFinal":Landroid/widget/EditText;
    :cond_b0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 451
    move-object v4, v2

    .line 452
    .local v4, "finalEditText":Landroid/widget/EditText;
    const-string v7, "OK"

    const v8, 0x7f0703d4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$6;

    invoke-direct {v8, p0, p1, v4}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$6;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    const-string v7, "Cancel"

    const v8, 0x7f0700fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 460
    if-eqz v2, :cond_c

    .line 461
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 462
    .local v5, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_fa

    .line 463
    instance-of v7, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_ed

    move-object v7, v5

    .line 464
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 466
    :cond_ed
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 467
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    :cond_fa
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_c

    .line 472
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "editText":Landroid/widget/EditText;
    .end local v4    # "finalEditText":Landroid/widget/EditText;
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "message":Ljava/lang/String;
    :cond_107
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    if-eqz v7, :cond_113

    .line 473
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    invoke-interface {v7, p1, p3}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    .line 474
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    .line 476
    :cond_113
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->finishFragment()V

    goto/16 :goto_c
.end method

.method private updateVisibleRows(I)V
    .registers 6
    .param p1, "mask"    # I

    .prologue
    .line 525
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-eqz v3, :cond_1f

    .line 526
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v2

    .line 527
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    if-ge v0, v2, :cond_1f

    .line 528
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 529
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_1c

    .line 530
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 527
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 534
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searching:Z

    .line 136
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchWas:Z

    .line 137
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 138
    .local v15, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 139
    .local v8, "back":Landroid/graphics/drawable/Drawable;
    const-string v1, "contactsHeaderIconsColor"

    const/4 v2, -0x1

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "contactsHeaderTitleColor"

    const/4 v3, -0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->destroyAfterSelect:Z

    if-eqz v1, :cond_25c

    .line 146
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->returnAsResult:Z

    if-eqz v1, :cond_232

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "SelectContact"

    const v3, 0x7f0704d2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    :goto_67
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$1;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v14

    .line 172
    .local v14, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 173
    .local v11, "ic_refresh":Landroid/graphics/drawable/Drawable;
    const-string v1, "contactsHeaderIconsColor"

    const/4 v2, -0x1

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 176
    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowUsernameSearch:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowBots:Z

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 177
    new-instance v1, Lorg/telegram/ui/Adapters/OnlineAdaptors;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->onlyUsers:Z

    if-eqz v2, :cond_26e

    const/4 v3, 0x1

    :goto_be
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needPhonebook:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I

    if-eqz v2, :cond_271

    const/4 v6, 0x1

    :goto_cd
    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/OnlineAdaptors;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    .line 179
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->fragmentView:Landroid/view/View;

    .line 181
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    .local v9, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .local v12, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 187
    const/4 v1, -0x1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    const/16 v1, 0x30

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v1, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$2;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v2, "NoContacts"

    const v3, 0x7f070356

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .local v13, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 205
    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 206
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .restart local v13    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 213
    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 214
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 215
    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v1, Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1ed

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_274

    const/4 v1, 0x1

    :goto_1ea
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    .line 229
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .restart local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 232
    const/4 v1, -0x1

    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/LetterSectionsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v2, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v2, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$4;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->fragmentView:Landroid/view/View;

    return-object v1

    .line 149
    .end local v9    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .end local v10    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v11    # "ic_refresh":Landroid/graphics/drawable/Drawable;
    .end local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_232
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z

    if-eqz v1, :cond_24a

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "NewSecretChat"

    const v3, 0x7f07034c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    .line 152
    :cond_24a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "NewMessageTitle"

    const v3, 0x7f070345

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    .line 156
    :cond_25c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "OnlineContacs"

    const v3, 0x7f070777

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    .line 177
    .restart local v11    # "ic_refresh":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_26e
    const/4 v3, 0x0

    goto/16 :goto_be

    :cond_271
    const/4 v6, 0x0

    goto/16 :goto_cd

    .line 227
    .restart local v9    # "emptyTextLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v13    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_274
    const/4 v1, 0x2

    goto/16 :goto_1ea
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 500
    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v3, :cond_f

    .line 501
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v3, :cond_e

    .line 502
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    .line 522
    :cond_e
    :goto_e
    return-void

    .line 504
    :cond_f
    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v3, :cond_2b

    .line 505
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 506
    .local v2, "mask":I
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_27

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_27

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_e

    .line 507
    :cond_27
    invoke-direct {p0, v2}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->updateVisibleRows(I)V

    goto :goto_e

    .line 509
    .end local v2    # "mask":I
    :cond_2b
    sget v3, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, v3, :cond_5c

    .line 510
    iget-boolean v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z

    if-eqz v3, :cond_e

    .line 511
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 512
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, "args2":Landroid/os/Bundle;
    const-string v3, "enc_id"

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 515
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_e

    .line 517
    .end local v0    # "args2":Landroid/os/Bundle;
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_5c
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_e

    .line 518
    iget-boolean v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z

    if-nez v3, :cond_e

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->removeSelfFromStack()V

    goto :goto_e
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 99
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 101
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_91

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->onlyUsers:Z

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->destroyAfterSelect:Z

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->returnAsResult:Z

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "createSecretChat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "allowUsernameSearch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowUsernameSearch:Z

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needForwardCount:Z

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->allowBots:Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I

    .line 117
    :goto_89
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 119
    return v3

    .line 114
    :cond_91
    iput-boolean v3, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needPhonebook:Z

    goto :goto_89
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 125
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 126
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 127
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 128
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    .line 130
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 492
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_c

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 496
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 482
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_c

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    .line 486
    :cond_c
    const-string v0, "Online Contact Fragment"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    .prologue
    .line 537
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->delegate:Lorg/telegram/ui/Telehgram/OnlineContactsActivity$ContactsActivityDelegate;

    .line 538
    return-void
.end method

.method public setIgnoreUsers(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    .line 542
    return-void
.end method
