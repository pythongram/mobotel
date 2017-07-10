.class public Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DrawerLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->resetItems()V

    .line 39
    return-void
.end method

.method private resetItems()V
    .registers 11

    .prologue
    const v9, 0x7f0201cf

    const v8, 0x7f0201cd

    const v7, 0x7f0201c1

    const/4 v6, 0x0

    const v5, 0x7f0201c3

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 143
    :goto_18
    return-void

    .line 109
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xb

    const-string v3, "TelehGramSettings"

    const v4, 0x7f0707ec

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v2, 0x2

    const-string v3, "NewGroup"

    const v4, 0x7f070344

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201ca

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v2, 0x3

    const-string v3, "NewSecretChat"

    const v4, 0x7f07034c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201cc

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v2, 0x4

    const-string v3, "NewChannel"

    const v4, 0x7f070342

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v7}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x15

    const-string v3, "Themechannel"

    const v4, 0x7f0707f4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v9}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v2, 0x6

    const-string v3, "Contacts"

    const v4, 0x7f070191

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v0, :cond_c8

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xa

    const-string v3, "Calls"

    const v4, 0x7f0700fb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c2

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_c8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xf

    const-string v3, "OnlineContacts"

    const v4, 0x7f070778

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02026f

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xc

    const-string v3, "ContactsChanges"

    const v4, 0x7f070693

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xd

    const-string v3, "FilterScreen"

    const v4, 0x7f0706fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020140

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0xe

    const-string v3, "SpecialContacts"

    const v4, 0x7f0707dc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v5}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x9

    const-string v3, "DownloadManager"

    const v4, 0x7f0706bc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c5

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x10

    const-string v3, "AnsweringMachineSectionRow"

    const v4, 0x7f070644

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02013e

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x13

    const-string v3, "Cleaner"

    const v4, 0x7f070681

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02013f

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x8

    const-string v3, "Settings"

    const v4, 0x7f0704fb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x12

    const-string v3, "Theme"

    const v4, 0x7f070539

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v9}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x11

    const-string v3, "FindID"

    const v4, 0x7f0706ff

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020141

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v2, 0x7

    const-string v3, "AntiReport"

    const v4, 0x7f07064a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0201c0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v2, 0x14

    const-string v3, "tellgramchannel"

    const v4, 0x7f0708ae

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v7}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18
.end method


# virtual methods
.method public getId(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 146
    if-ltz p1, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_c

    .line 150
    :cond_b
    :goto_b
    return v1

    .line 149
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    .line 150
    .local v0, "item":Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;
    if-eqz v0, :cond_b

    iget v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    goto :goto_b
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 94
    if-nez p1, :cond_5

    .line 95
    const/4 v0, 0x0

    .line 101
    :cond_4
    :goto_4
    return v0

    .line 96
    :cond_5
    if-eq p1, v0, :cond_4

    .line 98
    const/4 v0, 0x6

    if-ne p1, v0, :cond_c

    .line 99
    const/4 v0, 0x2

    goto :goto_4

    .line 101
    :cond_c
    const/4 v0, 0x3

    goto :goto_4
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->resetItems()V

    .line 49
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 90
    :goto_7
    :pswitch_7
    return-void

    .line 83
    :pswitch_8
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 84
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "avatar_backgroundActionBarBlue"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    .line 87
    :pswitch_2b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/DrawerActionCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V

    goto :goto_7

    .line 81
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_2b
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_38

    .line 66
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    .line 75
    .local v0, "view":Landroid/view/View;
    :goto_10
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 62
    .end local v0    # "view":Landroid/view/View;
    :pswitch_20
    new-instance v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_10

    .line 69
    .end local v0    # "view":Landroid/view/View;
    :pswitch_28
    new-instance v0, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_10

    .line 72
    .end local v0    # "view":Landroid/view/View;
    :pswitch_30
    new-instance v0, Lorg/telegram/ui/Cells/DrawerActionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DrawerActionCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_10

    .line 60
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_20
        :pswitch_3
        :pswitch_28
        :pswitch_30
    .end packed-switch
.end method
