.class public Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCreateAdapter"
.end annotation


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private searching:Z

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 783
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 776
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    .line 777
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 781
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    .line 784
    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    .line 786
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 787
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 788
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 789
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_47

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v3, :cond_47

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v3, :cond_4a

    .line 787
    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 792
    :cond_4a
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 795
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_50
    new-instance v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 796
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 807
    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 773
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 773
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 773
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3102(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 773
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$3;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 4

    .prologue
    .line 844
    iget-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz v2, :cond_1a

    .line 845
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 846
    .local v0, "count":I
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 847
    .local v1, "globalCount":I
    if-eqz v1, :cond_19

    .line 848
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 852
    .end local v0    # "count":I
    .end local v1    # "globalCount":I
    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_19
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 928
    iget-boolean v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz v1, :cond_e

    .line 929
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_e

    .line 930
    const/4 v0, 0x0

    .line 934
    :cond_e
    return v0
.end method

.method public getLetter(I)Ljava/lang/String;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 819
    if-ltz p1, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_e

    .line 839
    :cond_d
    :goto_d
    return-object v1

    .line 822
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 823
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_d

    .line 826
    sget v1, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    if-ne v1, v3, :cond_42

    .line 827
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 828
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 829
    :cond_2f
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 830
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 833
    :cond_42
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 834
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 835
    :cond_55
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 836
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 839
    :cond_68
    const-string v1, ""

    goto :goto_d
.end method

.method public getPositionForScrollProgress(F)I
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 952
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 18
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 871
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_110

    .line 880
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 882
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    const/4 v8, 0x0

    .line 883
    .local v8, "username":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 884
    .local v6, "name":Ljava/lang/CharSequence;
    iget-boolean v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz v10, :cond_101

    .line 885
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 886
    .local v5, "localCount":I
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 887
    .local v4, "globalCount":I
    if-ltz p2, :cond_9d

    move/from16 v0, p2

    if-ge v0, v5, :cond_9d

    .line 888
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 894
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_33
    if-eqz v7, :cond_6e

    .line 895
    move/from16 v0, p2

    if-ge v0, v5, :cond_bc

    .line 896
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "name":Ljava/lang/CharSequence;
    check-cast v6, Ljava/lang/CharSequence;

    .line 897
    .restart local v6    # "name":Ljava/lang/CharSequence;
    if-eqz v6, :cond_6e

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 898
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 899
    move-object v8, v6

    .line 900
    const/4 v6, 0x0

    .line 919
    .end local v4    # "globalCount":I
    .end local v5    # "localCount":I
    :cond_6e
    :goto_6e
    invoke-virtual {v1, v7, v6, v8}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 920
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 924
    .end local v1    # "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .end local v6    # "name":Ljava/lang/CharSequence;
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v8    # "username":Ljava/lang/CharSequence;
    :cond_85
    :goto_85
    return-void

    .line 873
    :pswitch_86
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    .line 874
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateSectionCell;
    iget-boolean v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-eqz v10, :cond_85

    .line 875
    const-string v10, "GlobalSearch"

    const v11, 0x7f07026c

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Cells/GroupCreateSectionCell;->setText(Ljava/lang/String;)V

    goto :goto_85

    .line 889
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .restart local v4    # "globalCount":I
    .restart local v5    # "localCount":I
    .restart local v6    # "name":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    :cond_9d
    move/from16 v0, p2

    if-le v0, v5, :cond_b9

    add-int v10, v4, v5

    move/from16 v0, p2

    if-gt v0, v10, :cond_b9

    .line 890
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v10

    sub-int v11, p2, v5

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_33

    .line 892
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b9
    const/4 v7, 0x0

    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_33

    .line 903
    :cond_bc
    move/from16 v0, p2

    if-le v0, v5, :cond_6e

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 904
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "foundUserName":Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_db

    .line 906
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    :cond_db
    :try_start_db
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e0} :catch_fc

    .line 910
    .end local v8    # "username":Ljava/lang/CharSequence;
    .local v9, "username":Ljava/lang/CharSequence;
    :try_start_e0
    move-object v0, v9

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v10, v0

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const-string v12, "windowBackgroundWhiteBlueText4"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f9} :catch_10d

    move-object v8, v9

    .line 913
    .end local v9    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_6e

    .line 911
    :catch_fc
    move-exception v2

    .line 912
    .local v2, "e":Ljava/lang/Exception;
    :goto_fd
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto/16 :goto_6e

    .line 917
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "foundUserName":Ljava/lang/String;
    .end local v4    # "globalCount":I
    .end local v5    # "localCount":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_101
    iget-object v10, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_6e

    .line 911
    .end local v8    # "username":Ljava/lang/CharSequence;
    .restart local v3    # "foundUserName":Ljava/lang/String;
    .restart local v4    # "globalCount":I
    .restart local v5    # "localCount":I
    .restart local v9    # "username":Ljava/lang/CharSequence;
    :catch_10d
    move-exception v2

    move-object v8, v9

    .end local v9    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto :goto_fd

    .line 871
    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_86
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 858
    packed-switch p2, :pswitch_data_1a

    .line 863
    new-instance v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;Z)V

    .line 866
    .local v0, "view":Landroid/view/View;
    :goto_b
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 860
    .end local v0    # "view":Landroid/view/View;
    :pswitch_11
    new-instance v0, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GroupCreateSectionCell;-><init>(Landroid/content/Context;)V

    .line 861
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_b

    .line 858
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 945
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 946
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->recycle()V

    .line 948
    :cond_e
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .registers 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 957
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_20

    .line 963
    :cond_a
    :goto_a
    if-nez p1, :cond_25

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 967
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 1042
    :goto_1f
    return-void

    .line 960
    :catch_20
    move-exception v6

    .line 961
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 969
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;-><init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1f
.end method

.method public setSearching(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 810
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    if-ne v0, p1, :cond_5

    .line 815
    :goto_4
    return-void

    .line 813
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searching:Z

    .line 814
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method
