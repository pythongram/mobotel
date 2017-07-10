.class public Lorg/telegram/ui/ContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;
    }
.end annotation


# static fields
.field private static final add_button:I = 0x1

.field private static final search_button:I


# instance fields
.field private addingToChannel:Z

.field private allowBots:Z

.field private allowUsernameSearch:Z

.field private chat_id:I

.field private checkPermission:Z

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

.field private destroyAfterSelect:Z

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

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

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private onlyUsers:Z

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

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

    .line 109
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 88
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 89
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 99
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ContactsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContactsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ContactsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    return v0
.end method

.method private askForPermissons()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 533
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_7

    .line 544
    :goto_6
    return-void

    .line 536
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v2, "permissons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_23

    .line 538
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 543
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .registers 16
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "useAlert"    # Z
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 405
    if-eqz p2, :cond_109

    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v7, :cond_109

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_d

    .line 495
    :cond_c
    :goto_c
    return-void

    .line 409
    :cond_d
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v7, :cond_34

    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v7, :cond_34

    iget-boolean v7, p0, Lorg/telegram/ui/ContactsActivity;->addingToChannel:Z

    if-nez v7, :cond_34

    .line 411
    :try_start_19
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "BotCantJoinGroups"

    const v9, 0x7f0700da

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_c

    .line 412
    :catch_2f
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_34
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v7, "AppName"

    const v8, 0x7f070092

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 419
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 421
    .local v2, "editText":Landroid/widget/EditText;
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_b2

    iget-boolean v7, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    if-eqz v7, :cond_b2

    .line 422
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

    .line 423
    new-instance v2, Landroid/widget/EditText;

    .end local v2    # "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v2    # "editText":Landroid/widget/EditText;
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 425
    const-string v7, "50"

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 427
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 428
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    move-object v3, v2

    .line 431
    .local v3, "editTextFinal":Landroid/widget/EditText;
    new-instance v7, Lorg/telegram/ui/ContactsActivity$5;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/ContactsActivity$5;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 467
    .end local v3    # "editTextFinal":Landroid/widget/EditText;
    :cond_b2
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 468
    move-object v4, v2

    .line 469
    .local v4, "finalEditText":Landroid/widget/EditText;
    const-string v7, "OK"

    const v8, 0x7f0703d4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ContactsActivity$6;

    invoke-direct {v8, p0, p1, v4}, Lorg/telegram/ui/ContactsActivity$6;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 475
    const-string v7, "Cancel"

    const v8, 0x7f0700fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 476
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 477
    if-eqz v2, :cond_c

    .line 478
    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 479
    .local v5, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_fc

    .line 480
    instance-of v7, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_ef

    move-object v7, v5

    .line 481
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 483
    :cond_ef
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 484
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    :cond_fc
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_c

    .line 489
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "editText":Landroid/widget/EditText;
    .end local v4    # "finalEditText":Landroid/widget/EditText;
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "message":Ljava/lang/String;
    :cond_109
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz v7, :cond_115

    .line 490
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    invoke-interface {v7, p1, p3}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    .line 491
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 493
    :cond_115
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->finishFragment()V

    goto/16 :goto_c
.end method

.method private updateVisibleRows(I)V
    .registers 6
    .param p1, "mask"    # I

    .prologue
    .line 597
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_1f

    .line 598
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 599
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    if-ge v0, v2, :cond_1f

    .line 600
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 601
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_1c

    .line 602
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 599
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 606
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 158
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-eqz v0, :cond_137

    .line 159
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v0, :cond_113

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "SelectContact"

    const v2, 0x7f0704d2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    :goto_2a
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 184
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x0

    const v1, 0x7f0200ea

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ContactsActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    .line 223
    .local v8, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Search"

    const v2, 0x7f0704b8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v0, :cond_6f

    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v0, :cond_6f

    .line 225
    const/4 v0, 0x1

    const v1, 0x7f020047

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 228
    :cond_6f
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 229
    new-instance v0, Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    if-eqz v1, :cond_147

    const/4 v2, 0x1

    :goto_86
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    if-eqz v1, :cond_14a

    const/4 v5, 0x1

    :goto_8f
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/ContactsAdapter;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 231
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    .line 232
    iget-object v7, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 234
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled()V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$3;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$4;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 162
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v9    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_113
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v0, :cond_127

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "NewSecretChat"

    const v2, 0x7f07034c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 165
    :cond_127
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "NewMessageTitle"

    const v2, 0x7f070345

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 169
    :cond_137
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Contacts"

    const v2, 0x7f070191

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 229
    .restart local v8    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .restart local v9    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_147
    const/4 v2, 0x0

    goto/16 :goto_86

    :cond_14a
    const/4 v5, 0x0

    goto/16 :goto_8f
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 572
    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v3, :cond_f

    .line 573
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v3, :cond_e

    .line 574
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 594
    :cond_e
    :goto_e
    return-void

    .line 576
    :cond_f
    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v3, :cond_2b

    .line 577
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 578
    .local v2, "mask":I
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_27

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_27

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_e

    .line 579
    :cond_27
    invoke-direct {p0, v2}, Lorg/telegram/ui/ContactsActivity;->updateVisibleRows(I)V

    goto :goto_e

    .line 581
    .end local v2    # "mask":I
    :cond_2b
    sget v3, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, v3, :cond_5c

    .line 582
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-eqz v3, :cond_e

    .line 583
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 584
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 585
    .local v0, "args2":Landroid/os/Bundle;
    const-string v3, "enc_id"

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 587
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_e

    .line 589
    .end local v0    # "args2":Landroid/os/Bundle;
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_5c
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_e

    .line 590
    iget-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-nez v3, :cond_e

    .line 591
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->removeSelfFromStack()V

    goto :goto_e
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 618
    new-instance v9, Lorg/telegram/ui/ContactsActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ContactsActivity$7;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 633
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x24

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LetterSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollActive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollInactive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_nameIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlueText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_name"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 524
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 526
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons()V

    .line 528
    :cond_14
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 118
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 119
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_9b

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "createSecretChat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "allowUsernameSearch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "addingToChannel"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->addingToChannel:Z

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContactsActivity;->chat_id:I

    .line 135
    :goto_93
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 137
    return v3

    .line 132
    :cond_9b
    iput-boolean v3, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    goto :goto_93
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 143
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 144
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 145
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 148
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 564
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_c

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 568
    :cond_c
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 548
    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    .line 549
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_31

    .line 550
    array-length v1, p3

    if-le v1, v0, :cond_e

    aget v1, p3, v0

    if-eqz v1, :cond_11

    .line 549
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 553
    :cond_11
    aget-object v2, p2, v0

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_32

    :cond_1b
    :goto_1b
    packed-switch v1, :pswitch_data_38

    goto :goto_e

    .line 555
    :pswitch_1f
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_e

    .line 553
    :pswitch_27
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x0

    goto :goto_1b

    .line 560
    .end local v0    # "a":I
    :cond_31
    return-void

    .line 553
    :pswitch_data_32
    .packed-switch 0x75dd2d9c
        :pswitch_27
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 499
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v2, :cond_c

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 503
    :cond_c
    iget-boolean v2, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    if-eqz v2, :cond_62

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_62

    .line 504
    invoke-virtual {p0}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 505
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_62

    .line 506
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 507
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_62

    .line 508
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 509
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 511
    const-string v2, "PermissionContacts"

    const v3, 0x7f070438

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 512
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 513
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 520
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_62
    :goto_62
    return-void

    .line 515
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_63
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons()V

    goto :goto_62
.end method

.method public setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .prologue
    .line 609
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 610
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
    .line 613
    .local p1, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;

    .line 614
    return-void
.end method
