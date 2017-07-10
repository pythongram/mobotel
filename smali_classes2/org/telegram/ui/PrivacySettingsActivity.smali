.class public Lorg/telegram/ui/PrivacySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private blockedRow:I

.field private callsRow:I

.field private deleteAccountDetailRow:I

.field private deleteAccountRow:I

.field private deleteAccountSectionRow:I

.field private groupsDetailRow:I

.field private groupsRow:I

.field private lastSeenRow:I

.field private listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private passcodeRow:I

.field private passwordRow:I

.field private privacySectionRow:I

.field private rowCount:I

.field private secretDetailRow:I

.field private secretSectionRow:I

.field private secretWebpageRow:I

.field private securitySectionRow:I

.field private sessionsDetailRow:I

.field private sessionsRow:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    return v0
.end method

.method private formatRulesString(I)Ljava/lang/String;
    .registers 14
    .param p1, "rulesType"    # I

    .prologue
    const v9, 0x7f0702d3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 249
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 250
    .local v3, "privacyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1c

    .line 251
    const-string v6, "LastSeenNobody"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 295
    :goto_1b
    return-object v6

    .line 253
    :cond_1c
    const/4 v5, -0x1

    .line 254
    .local v5, "type":I
    const/4 v2, 0x0

    .line 255
    .local v2, "plus":I
    const/4 v1, 0x0

    .line 256
    .local v1, "minus":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_54

    .line 257
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 258
    .local v4, "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v6, :cond_3a

    .line 259
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 256
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 260
    :cond_3a
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v6, :cond_46

    .line 261
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_37

    .line 262
    :cond_46
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_4c

    .line 263
    const/4 v5, 0x0

    goto :goto_37

    .line 264
    :cond_4c
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_52

    .line 265
    const/4 v5, 0x1

    goto :goto_37

    .line 267
    :cond_52
    const/4 v5, 0x2

    goto :goto_37

    .line 270
    .end local v4    # "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_54
    if-eqz v5, :cond_5a

    if-ne v5, v7, :cond_78

    if-lez v1, :cond_78

    .line 271
    :cond_5a
    if-nez v1, :cond_66

    .line 272
    const-string v6, "LastSeenEverybody"

    const v7, 0x7f0702c4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    .line 274
    :cond_66
    const-string v6, "LastSeenEverybodyMinus"

    const v7, 0x7f0702c5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    .line 276
    :cond_78
    if-eq v5, v8, :cond_80

    if-ne v5, v7, :cond_d3

    if-lez v1, :cond_d3

    if-lez v2, :cond_d3

    .line 277
    :cond_80
    if-nez v2, :cond_8e

    if-nez v1, :cond_8e

    .line 278
    const-string v6, "LastSeenContacts"

    const v7, 0x7f0702bf

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    .line 280
    :cond_8e
    if-eqz v2, :cond_ab

    if-eqz v1, :cond_ab

    .line 281
    const-string v6, "LastSeenContactsMinusPlus"

    const v7, 0x7f0702c1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1b

    .line 282
    :cond_ab
    if-eqz v1, :cond_c0

    .line 283
    const-string v6, "LastSeenContactsMinus"

    const v7, 0x7f0702c0

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1b

    .line 285
    :cond_c0
    const-string v6, "LastSeenContactsPlus"

    const v7, 0x7f0702c2

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1b

    .line 288
    :cond_d3
    if-eq v5, v10, :cond_d7

    if-lez v2, :cond_f4

    .line 289
    :cond_d7
    if-nez v2, :cond_e1

    .line 290
    const-string v6, "LastSeenNobody"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1b

    .line 292
    :cond_e1
    const-string v6, "LastSeenNobodyPlus"

    const v7, 0x7f0702d4

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1b

    .line 295
    :cond_f4
    const-string v6, "unknown"

    goto/16 :goto_1b
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "PrivacySettings"

    const v3, 0x7f07046f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 131
    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    .line 133
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 135
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 137
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 241
    sget v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, v0, :cond_d

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_d

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 246
    :cond_d
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 461
    const/16 v0, 0x14

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v10, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 73
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 75
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    .line 78
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    .line 79
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    .line 80
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    .line 81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v0, :cond_b1

    .line 82
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    .line 86
    :goto_37
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    .line 87
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    .line 88
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    .line 89
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    .line 90
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    .line 91
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    .line 92
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    .line 93
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I

    .line 94
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    .line 95
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    .line 96
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-eq v0, v3, :cond_b4

    .line 97
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    .line 98
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    .line 99
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    .line 106
    :goto_a7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 108
    return v3

    .line 84
    :cond_b1
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    goto :goto_37

    .line 101
    :cond_b4
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    .line 102
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    .line 103
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    goto :goto_a7
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 114
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 115
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 300
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 304
    :cond_c
    return-void
.end method
