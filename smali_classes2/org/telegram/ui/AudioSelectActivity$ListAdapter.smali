.class Lorg/telegram/ui/AudioSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "AudioSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AudioSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/AudioSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/AudioSelectActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 282
    iput-object p2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 283
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 296
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 318
    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    .line 319
    .local v0, "audioEntry":Lorg/telegram/messenger/MediaController$AudioEntry;
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/AudioCell;

    iget-object v2, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v3, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->audioEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/AudioSelectActivity;->access$300(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_3f

    const/4 v3, 0x1

    :goto_2b
    iget-object v4, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # getter for: Lorg/telegram/ui/AudioSelectActivity;->selectedAudios:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/AudioSelectActivity;->access$000(Lorg/telegram/ui/AudioSelectActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-wide v6, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/AudioCell;->setAudio(Lorg/telegram/messenger/MediaController$AudioEntry;ZZ)V

    .line 320
    return-void

    .line 319
    :cond_3f
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 306
    new-instance v0, Lorg/telegram/ui/Cells/AudioCell;

    iget-object v1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/AudioCell;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "view":Lorg/telegram/ui/Cells/AudioCell;
    new-instance v1, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/AudioSelectActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/AudioCell;->setDelegate(Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;)V

    .line 313
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
