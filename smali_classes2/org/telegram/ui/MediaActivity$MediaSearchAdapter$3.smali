.class Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .prologue
    .line 1946
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 1949
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v3

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 1950
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    if-eq v2, v8, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    if-ne v2, v9, :cond_a6

    .line 1951
    :cond_2c
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v3

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v4

    aget-object v3, v3, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1952
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    .line 1957
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6f
    :goto_6f
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    if-eq v2, v8, :cond_7f

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    if-ne v2, v9, :cond_a5

    .line 1958
    :cond_7f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v2, v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v3

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1960
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3$1;-><init>(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2025
    .end local v0    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_a5
    return-void

    .line 1953
    :cond_a6
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    # getter for: Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->access$5700(Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6f

    .line 1954
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->val$query:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter$3;->this$1:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    iget-object v5, v5, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    goto :goto_6f
.end method
