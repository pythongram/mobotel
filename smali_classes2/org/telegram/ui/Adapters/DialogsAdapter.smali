.class public Lorg/telegram/ui/Adapters/DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsAdapter$Holder;
    }
.end annotation


# instance fields
.field private currentCount:I

.field private dialogsType:I

.field private mContext:Landroid/content/Context;

.field private openedDialogId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 43
    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 55
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v3, :cond_19

    .line 66
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 130
    :goto_18
    return-object v3

    .line 67
    :cond_19
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 68
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_18

    .line 69
    :cond_25
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 70
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_18

    .line 71
    :cond_31
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_58

    .line 72
    const-string v3, "sortChannels"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, "sort":I
    if-nez v2, :cond_4e

    .line 74
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 78
    :goto_47
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_18

    .line 76
    :cond_4e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_47

    .line 79
    .end local v2    # "sort":I
    :cond_58
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7f

    .line 80
    const-string v3, "sortGroups"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .restart local v2    # "sort":I
    if-nez v2, :cond_75

    .line 82
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 86
    :goto_6e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_18

    .line 84
    :cond_75
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_6e

    .line 87
    .end local v2    # "sort":I
    :cond_7f
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a7

    .line 88
    const-string v3, "sortBots"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .restart local v2    # "sort":I
    if-nez v2, :cond_9d

    .line 90
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 94
    :goto_95
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto/16 :goto_18

    .line 92
    :cond_9d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_95

    .line 95
    .end local v2    # "sort":I
    :cond_a7
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c3

    .line 96
    const-string v3, "sortUsers"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .restart local v2    # "sort":I
    if-nez v2, :cond_bf

    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUsersDefault()V

    .line 102
    :goto_b7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto/16 :goto_18

    .line 100
    :cond_bf
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUsersByStatus()V

    goto :goto_b7

    .line 103
    .end local v2    # "sort":I
    :cond_c3
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_eb

    .line 104
    const-string v3, "sortSGroups"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 105
    .restart local v2    # "sort":I
    if-nez v2, :cond_e1

    .line 106
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 110
    :goto_d9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto/16 :goto_18

    .line 108
    :cond_e1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_d9

    .line 111
    .end local v2    # "sort":I
    :cond_eb
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_114

    .line 112
    const-string v3, "sortFavs"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .restart local v2    # "sort":I
    if-nez v2, :cond_10a

    .line 114
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 118
    :goto_102
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto/16 :goto_18

    .line 116
    :cond_10a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_102

    .line 121
    .end local v2    # "sort":I
    :cond_114
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_13d

    .line 122
    const-string v3, "sortGroups"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .restart local v2    # "sort":I
    if-nez v2, :cond_133

    .line 124
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortDefault(Ljava/util/ArrayList;)V

    .line 128
    :goto_12b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto/16 :goto_18

    .line 126
    :cond_133
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->sortUnread(Ljava/util/ArrayList;)V

    goto :goto_12b

    .line 130
    .end local v2    # "sort":I
    :cond_13d
    const/4 v3, 0x0

    goto/16 :goto_18
.end method

.method private sortDefault(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    return-void
.end method

.method private sortUnread(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    return-void
.end method

.method private sortUsersByStatus()V
    .registers 3

    .prologue
    .line 169
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsAdapter$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    return-void
.end method

.method private sortUsersDefault()V
    .registers 3

    .prologue
    .line 154
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 243
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p1, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_e

    .line 245
    :cond_c
    const/4 v1, 0x0

    .line 247
    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_d
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    .local v0, "count":I
    if-nez v0, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v1, :cond_14

    .line 233
    const/4 v1, 0x0

    .line 239
    :goto_13
    return v1

    .line 235
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v1, :cond_1e

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_1e
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    move v1, v0

    .line 239
    goto :goto_13
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDataSetChanged()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 50
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    .line 51
    .local v0, "current":I
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_b

    if-ne v0, v1, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 19
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 276
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v12

    if-nez v12, :cond_7d

    .line 277
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/DialogCell;

    .line 278
    .local v3, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_7e

    const/4 v12, 0x1

    :goto_17
    iput-boolean v12, v3, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 279
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v5

    .line 280
    .local v5, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v12, :cond_3b

    .line 281
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 282
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_80

    const/4 v12, 0x1

    :goto_38
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 286
    :cond_3b
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "theme"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 287
    .local v10, "themePrefs":Landroid/content/SharedPreferences;
    const-string v12, "chatsRowColor"

    const/4 v13, -0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 289
    .local v9, "mainColor":I
    const-string v12, "chatsRowGradient"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 290
    .local v11, "value":I
    const/4 v2, 0x1

    .line 291
    .local v2, "b":Z
    if-lez v11, :cond_74

    if-nez v2, :cond_74

    .line 293
    packed-switch v11, :pswitch_data_8c

    .line 304
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 307
    .local v7, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_5c
    const-string v12, "chatsRowGradientColor"

    const/4 v13, -0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 308
    .local v8, "gradColor":I
    const/4 v12, 0x2

    new-array v4, v12, [I

    const/4 v12, 0x0

    aput v9, v4, v12

    const/4 v12, 0x1

    aput v8, v4, v12

    .line 309
    .local v4, "colors":[I
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 310
    .local v6, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/DialogCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    .end local v4    # "colors":[I
    .end local v6    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v8    # "gradColor":I
    :cond_74
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    move/from16 v0, p2

    invoke-virtual {v3, v5, v0, v12}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V

    .line 315
    .end local v2    # "b":Z
    .end local v3    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .end local v5    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "mainColor":I
    .end local v10    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v11    # "value":I
    :cond_7d
    return-void

    .line 278
    .restart local v3    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_7e
    const/4 v12, 0x0

    goto :goto_17

    .line 282
    .restart local v5    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_80
    const/4 v12, 0x0

    goto :goto_38

    .line 295
    .restart local v2    # "b":Z
    .restart local v9    # "mainColor":I
    .restart local v10    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v11    # "value":I
    :pswitch_82
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 296
    .restart local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_5c

    .line 298
    .end local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_85
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 299
    .restart local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_5c

    .line 301
    .end local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_88
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 302
    .restart local v7    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_5c

    .line 293
    nop

    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_82
        :pswitch_85
        :pswitch_88
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1a

    .line 266
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 270
    .restart local v0    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 267
    :cond_1a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    .line 268
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_a
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 252
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex()V

    .line 255
    :cond_d
    return-void
.end method

.method public setOpenedDialogId(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    .line 47
    return-void
.end method

.method public sort()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method
