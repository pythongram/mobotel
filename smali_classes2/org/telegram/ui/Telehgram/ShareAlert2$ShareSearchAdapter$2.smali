.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    .prologue
    .line 812
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 815
    iget v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$searchId:I

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->lastSearchId:I
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2000(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)I

    move-result v9

    if-eq v8, v9, :cond_d

    .line 839
    :cond_c
    :goto_c
    return-void

    .line 818
    :cond_d
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_44

    .line 819
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .line 820
    .local v4, "obj":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    iget-object v8, v4, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_32

    .line 821
    iget-object v5, v4, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 822
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 818
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 823
    :cond_32
    iget-object v8, v4, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_2f

    .line 824
    iget-object v2, v4, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 825
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v2, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2f

    .line 828
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v4    # "obj":Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    :cond_44
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2300(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b8

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b8

    move v1, v6

    .line 829
    .local v1, "becomeEmpty":Z
    :goto_59
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2300(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_ba

    move v3, v6

    .line 830
    .local v3, "isEmpty":Z
    :goto_6e
    if-eqz v1, :cond_7f

    .line 831
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->getCurrentTop()I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1600(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v8

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v6, v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1502(Lorg/telegram/ui/Telehgram/ShareAlert2;I)I

    .line 833
    :cond_7f
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->val$result:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v6, v8}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->access$2302(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 834
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->notifyDataSetChanged()V

    .line 835
    if-nez v3, :cond_c

    if-nez v1, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1500(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v6

    if-lez v6, :cond_c

    .line 836
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1500(Lorg/telegram/ui/Telehgram/ShareAlert2;)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 837
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    const/16 v7, -0x3e8

    # setter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->topBeforeSwitch:I
    invoke-static {v6, v7}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1502(Lorg/telegram/ui/Telehgram/ShareAlert2;I)I

    goto/16 :goto_c

    .end local v1    # "becomeEmpty":Z
    .end local v3    # "isEmpty":Z
    :cond_b8
    move v1, v7

    .line 828
    goto :goto_59

    .restart local v1    # "becomeEmpty":Z
    :cond_ba
    move v3, v7

    .line 829
    goto :goto_6e
.end method
