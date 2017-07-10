.class public Lorg/telegram/ui/Telehgram/UpdateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "UpdateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# static fields
.field private static final delete:I = 0x2

.field private static final filter:I = 0x3


# instance fields
.field private currentFilterType:I

.field private cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

.field private dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

.field private emptyTextView:Landroid/widget/TextView;

.field private filterItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private listView:Landroid/widget/ListView;

.field private paused:Z

.field private selectedUser:Lorg/telegram/tgnet/TLRPC$User;

.field protected selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/Telehgram/a;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->forceReload()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/UpdateActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->showDeleteHistoryConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Telehgram/UpdateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/UpdateActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->filterItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Telehgram/UpdateActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/UpdateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    return p1
.end method

.method private forceReload()V
    .registers 6

    .prologue
    .line 61
    new-instance v0, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/a;

    invoke-direct {v2}, Lorg/telegram/ui/Telehgram/a;-><init>()V

    iget v3, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Telehgram/a;->a(II)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method

.method private openChatActivity()V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "user_id"

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Telehgram/UpdateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 69
    return-void
.end method

.method private showDeleteHistoryConfirmation()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "AreYouSureDeleteChanges"

    const v2, 0x7f070651

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/UpdateActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/UpdateActivity$1;-><init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Telehgram/UpdateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 84
    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 96
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->fragmentView:Landroid/view/View;

    .line 97
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x7f0200dd

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 98
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 99
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v6, "ContactsChanges"

    const v7, 0x7f070693

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/Telehgram/UpdateActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/UpdateActivity$2;-><init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 112
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 113
    .local v0, "createMenu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v5, 0x2

    const v6, 0x7f020111

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 114
    const/4 v5, 0x3

    const v6, 0x7f0200e2

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->filterItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 115
    new-instance v5, Lorg/telegram/ui/Telehgram/a;

    invoke-direct {v5}, Lorg/telegram/ui/Telehgram/a;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    .line 116
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->fragmentView:Landroid/view/View;

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 122
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 123
    const/16 v5, 0x30

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v5, Lorg/telegram/ui/Telehgram/UpdateActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Telehgram/UpdateActivity$3;-><init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    .line 132
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    const v6, -0x7f7f80

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v6, "NoContactChanges"

    const v7, 0x7f07076c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .local v3, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 140
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 141
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "frameLayout":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .restart local v3    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 147
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v5, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    new-instance v6, Lorg/telegram/ui/Telehgram/a;

    invoke-direct {v6}, Lorg/telegram/ui/Telehgram/a;-><init>()V

    iget v7, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Telehgram/a;->a(II)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    .line 151
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 153
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 154
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 156
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 158
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 159
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 160
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/Telehgram/UpdateCursorAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->fragmentView:Landroid/view/View;

    check-cast v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 165
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->listView:Landroid/widget/ListView;

    new-instance v6, Lorg/telegram/ui/Telehgram/UpdateActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/UpdateActivity$4;-><init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->fragmentView:Landroid/view/View;

    return-object v5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "objArr"    # [Ljava/lang/Object;

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->paused:Z

    if-nez v0, :cond_18

    .line 182
    invoke-static {}, Lorg/telegram/ui/Telehgram/UpdateNotificationUtil;->dismissNotification()V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/a;->a()V

    .line 184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 186
    :cond_18
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->forceReload()V

    .line 187
    return-void
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 190
    if-nez p2, :cond_4

    .line 216
    :cond_3
    :goto_3
    return-object v2

    .line 194
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_82

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eqz v4, :cond_82

    .line 195
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 196
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_82

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_82

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_82

    .line 197
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 198
    .local v0, "fileLocation2":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-nez v0, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v4, v5, :cond_3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v4, v5, :cond_3

    .line 201
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 202
    .local v1, "iArr":[I
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 203
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 204
    .local v2, "placeProviderObject":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 205
    const/4 v4, 0x1

    aget v4, v1, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 206
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 209
    iget-object v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 210
    const/4 v4, -0x1

    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v4

    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    goto :goto_3

    .line 215
    .end local v0    # "fileLocation2":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v1    # "iArr":[I
    .end local v2    # "placeProviderObject":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_82
    const/4 v0, 0x0

    .line 216
    .restart local v0    # "fileLocation2":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v0, :cond_3

    goto/16 :goto_3
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "i"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onFragmentCreate()Z
    .registers 2

    .prologue
    .line 232
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 1

    .prologue
    .line 237
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 238
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->paused:Z

    .line 243
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 247
    iput-boolean v2, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->paused:Z

    .line 248
    invoke-static {}, Lorg/telegram/ui/Telehgram/UpdateNotificationUtil;->dismissNotification()V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/Telehgram/a;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/a;->a()V

    .line 250
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 251
    const-string v0, "Update Contacts Fragment"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 256
    return-void
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 93
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 259
    return-void
.end method

.method protected showFilterDialog()V
    .registers 7

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "i":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070876

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 265
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070642

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 266
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f07084c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 267
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f07084e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f07084d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 269
    .local v1, "charSequenceArr":[Ljava/lang/CharSequence;
    iget v3, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    if-eqz v3, :cond_53

    .line 270
    iget v3, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->currentFilterType:I

    add-int/lit8 v2, v3, -0x1

    .line 272
    :cond_53
    new-instance v3, Lorg/telegram/ui/Telehgram/UpdateActivity$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/UpdateActivity$5;-><init>(Lorg/telegram/ui/Telehgram/UpdateActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Telehgram/UpdateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 295
    return-void
.end method

.method protected showUserActionsDialog()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/UpdateActivity;->openChatActivity()V

    .line 323
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 326
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_e

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 342
    :cond_e
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "i"    # I

    .prologue
    .line 345
    return-void
.end method
