.class Lorg/telegram/ui/Telehgram/ShareAlert2$7;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 369
    if-gez p2, :cond_4

    .line 390
    :cond_3
    :goto_3
    return-void

    .line 373
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$800(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->listAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$600(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    move-result-object v3

    if-ne v2, v3, :cond_50

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->listAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$600(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .line 378
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :goto_20
    if-eqz v1, :cond_3

    move-object v0, p1

    .line 381
    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 382
    .local v0, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 383
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 389
    :goto_4a
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->updateSelectedCount()V

    goto :goto_3

    .line 376
    .end local v0    # "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->searchAdapter:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$500(Lorg/telegram/ui/Telehgram/ShareAlert2;)Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    goto :goto_20

    .line 386
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$7;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # getter for: Lorg/telegram/ui/Telehgram/ShareAlert2;->selectedDialogs:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$1200(Lorg/telegram/ui/Telehgram/ShareAlert2;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    goto :goto_4a
.end method
