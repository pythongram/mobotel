.class public Lorg/telegram/ui/GroupCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;,
        Lorg/telegram/ui/GroupCreateActivity$SpansContainer;,
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

.field private allSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private chatId:I

.field private chatType:I

.field private containerHeight:I

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

.field private doneButton:Landroid/view/View;

.field private doneButtonVisible:Z

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fieldY:I

.field private ignoreScrollEvent:Z

.field private isAlwaysShare:Z

.field private isGroup:Z

.field private isNeverShare:Z

.field private itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxCount:I

.field private scrollView:Landroid/widget/ScrollView;

.field private searchWas:Z

.field private searching:Z

.field private selectedContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 289
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 92
    const/16 v0, 0x1388

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 92
    const/16 v0, 0x1388

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 93
    iput v1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 294
    const-string v0, "chatType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 295
    const-string v0, "isAlwaysShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    .line 296
    const-string v0, "isNeverShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    .line 297
    const-string v0, "isGroup"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    .line 298
    const-string v0, "chatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    .line 299
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-nez v0, :cond_4d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    :goto_4a
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 300
    return-void

    .line 299
    :cond_4d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    goto :goto_4a
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/GroupCreateActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Lorg/telegram/ui/Components/GroupCreateSpan;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupCreateActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GroupCreateActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/GroupCreateActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->closeSearch()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/GroupCreateActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/GroupCreateActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkVisibleRows()V
    .registers 8

    .prologue
    .line 671
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 672
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v3, :cond_2f

    .line 673
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 674
    .local v2, "child":Landroid/view/View;
    instance-of v5, v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v5, :cond_2c

    move-object v1, v2

    .line 675
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 676
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 677
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2c

    .line 678
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 672
    .end local v1    # "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 682
    .end local v2    # "child":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method private closeSearch()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 720
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 721
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->setSearching(Z)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v1, "NoContacts"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method private onDonePressed()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 685
    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5f

    .line 686
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 688
    .local v4, "uid":Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 689
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v5, :cond_16

    .line 690
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 693
    .end local v4    # "uid":Ljava/lang/Integer;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_34
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v3, v10}, Lorg/telegram/messenger/MessagesController;->addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 694
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 695
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v1, "args2":Landroid/os/Bundle;
    const-string v6, "chat_id"

    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/GroupCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .end local v1    # "args2":Landroid/os/Bundle;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :goto_5d
    move v6, v7

    .line 716
    :cond_5e
    return v6

    .line 699
    :cond_5f
    iget-boolean v8, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-eqz v8, :cond_5e

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5e

    .line 702
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 704
    iget-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v6, :cond_81

    iget-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v6, :cond_8e

    .line 705
    :cond_81
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    if-eqz v6, :cond_8a

    .line 706
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    invoke-interface {v6, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;->didSelectUsers(Ljava/util/ArrayList;)V

    .line 708
    :cond_8a
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->finishFragment()V

    goto :goto_5d

    .line 710
    :cond_8e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "result"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 712
    const-string v6, "chatType"

    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    new-instance v6, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/GroupCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_5d
.end method

.method private updateHint()V
    .registers 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 731
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-nez v0, :cond_23

    .line 732
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v0, v8, :cond_84

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Members"

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 742
    :cond_23
    :goto_23
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v0, v8, :cond_83

    .line 743
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3c

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 747
    :cond_3c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 749
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 750
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 748
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 753
    iput-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    .line 767
    :cond_83
    :goto_83
    return-void

    .line 735
    :cond_84
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "MembersCountZero"

    const v2, 0x7f07030b

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "Members"

    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 738
    :cond_a8
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "MembersCount"

    const v2, 0x7f07030a

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 754
    :cond_ce
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e3

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 758
    :cond_e3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v10, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v10, v4, v6

    .line 760
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v10, v4, v6

    .line 761
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 759
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 764
    iput-boolean v7, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    goto/16 :goto_83
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 337
    iput-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 338
    iput-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 339
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 340
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 341
    iput-object v10, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 342
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v3, v6, :cond_1e3

    move v3, v4

    :goto_1a
    iput-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    .line 344
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v7, 0x7f0200dd

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 345
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 346
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v3, v6, :cond_1e6

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "ChannelAddMembers"

    const v8, 0x7f07010f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    :goto_3b
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCreateActivity$1;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 377
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 378
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v3, 0x7f020114

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    .line 379
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v3, v6, :cond_6d

    .line 380
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleX(F)V

    .line 381
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleY(F)V

    .line 382
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 385
    :cond_6d
    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$2;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 421
    .local v0, "frameLayout":Landroid/view/ViewGroup;
    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$3;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    .line 434
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 435
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 436
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 438
    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    .line 439
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$4;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 451
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 452
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "groupcreate_hintText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 453
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 454
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "groupcreate_cursor"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 455
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0xa00b0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setInputType(I)V

    .line 456
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSingleLine(Z)V

    .line 457
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setVerticalScrollBarEnabled(Z)V

    .line 459
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHorizontalScrollBarEnabled(Z)V

    .line 460
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextIsSelectable(Z)V

    .line 461
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5, v5, v5, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setPadding(IIII)V

    .line 462
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0x10000006

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setImeOptions(I)V

    .line 463
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_254

    const/4 v3, 0x5

    :goto_10d
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setGravity(I)V

    .line 464
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addView(Landroid/view/View;)V

    .line 465
    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v3, v6, :cond_257

    .line 466
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "AddMutual"

    const v8, 0x7f07006d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    .line 484
    :goto_12b
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$5;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCreateActivity$5;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 501
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCreateActivity$6;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 507
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCreateActivity$7;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 519
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$8;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCreateActivity$8;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 547
    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 548
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v3

    if-eqz v3, :cond_2b7

    .line 549
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 553
    :goto_169
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 554
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v7, "NoContacts"

    const v8, 0x7f070356

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 557
    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 559
    .local v1, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 560
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled()V

    .line 561
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 562
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 564
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 565
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2be

    :goto_1b5
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 566
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-direct {v4}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 567
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 568
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$9;

    invoke-direct {v4, p0}, Lorg/telegram/ui/GroupCreateActivity$9;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 611
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/GroupCreateActivity$10;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 620
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 621
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .end local v0    # "frameLayout":Landroid/view/ViewGroup;
    .end local v1    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1e3
    move v3, v5

    .line 342
    goto/16 :goto_1a

    .line 349
    :cond_1e6
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-eqz v3, :cond_20e

    .line 350
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v3, :cond_1fe

    .line 351
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "AlwaysAllow"

    const v8, 0x7f070080

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 353
    :cond_1fe
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "AlwaysShareWithTitle"

    const v8, 0x7f070084

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 355
    :cond_20e
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v3, :cond_236

    .line 356
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v3, :cond_226

    .line 357
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "NeverAllow"

    const v8, 0x7f07033c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 359
    :cond_226
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v7, "NeverShareWithTitle"

    const v8, 0x7f070340

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    .line 362
    :cond_236
    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-nez v3, :cond_24a

    const-string v3, "NewGroup"

    const v8, 0x7f070344

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_245
    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :cond_24a
    const-string v3, "NewBroadcastList"

    const v8, 0x7f070341

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_245

    .line 463
    .restart local v0    # "frameLayout":Landroid/view/ViewGroup;
    .restart local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_254
    const/4 v3, 0x3

    goto/16 :goto_10d

    .line 468
    :cond_257
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-eqz v3, :cond_27f

    .line 469
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v3, :cond_26f

    .line 470
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "AlwaysAllowPlaceholder"

    const v8, 0x7f070081

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 472
    :cond_26f
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "AlwaysShareWithPlaceholder"

    const v8, 0x7f070083

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 474
    :cond_27f
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v3, :cond_2a7

    .line 475
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v3, :cond_297

    .line 476
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "NeverAllowPlaceholder"

    const v8, 0x7f07033d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 478
    :cond_297
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "NeverShareWithPlaceholder"

    const v8, 0x7f07033f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 481
    :cond_2a7
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "SendMessageTo"

    const v8, 0x7f0704dc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 551
    :cond_2b7
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_169

    .restart local v1    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_2be
    move v4, v6

    .line 565
    goto/16 :goto_1b5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 634
    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v4, :cond_17

    .line 635
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v4, :cond_d

    .line 636
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 638
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    if-eqz v4, :cond_16

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 657
    :cond_16
    :goto_16
    return-void

    .line 641
    :cond_17
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v4, :cond_4f

    .line 642
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_16

    .line 643
    const/4 v4, 0x0

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 644
    .local v3, "mask":I
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 645
    .local v2, "count":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3a

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3a

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_16

    .line 646
    :cond_3a
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3b
    if-ge v0, v2, :cond_16

    .line 647
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_4c

    .line 649
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 646
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 654
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mask":I
    :cond_4f
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v4, :cond_16

    .line 655
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->removeSelfFromStack()V

    goto :goto_16
.end method

.method public getContainerHeight()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 1058
    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$11;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 1071
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x25

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollActive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollInactive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "fastScrollText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_hintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_cursor"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "drawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionShadow"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_onlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "groupcreate_offlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

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

    const/16 v8, 0x1a

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

    const/16 v8, 0x1b

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

    const/16 v8, 0x1c

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

    const/16 v8, 0x1d

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

    const/16 v8, 0x1e

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

    const/16 v8, 0x1f

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

    const/16 v8, 0x20

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

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundGroupCreateSpanBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_spanBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "groupcreate_spanText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 321
    .local v0, "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 324
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 325
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    .line 333
    :goto_17
    return-void

    .line 327
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v1, :cond_21

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 330
    :cond_21
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 331
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    goto :goto_17
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 304
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 305
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 306
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 307
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 312
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 313
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 314
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 315
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 316
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 626
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_c

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    .line 630
    :cond_c
    return-void
.end method

.method public setContainerHeight(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 660
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    if-eqz v0, :cond_b

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->requestLayout()V

    .line 664
    :cond_b
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V
    .registers 2
    .param p1, "groupCreateActivityDelegate"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    .prologue
    .line 770
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    .line 771
    return-void
.end method
