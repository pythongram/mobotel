.class Lorg/telegram/ui/PhotoViewer$36;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2261
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2264
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 2265
    .local v1, "object":Ljava/lang/Object;
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultStartPosition()I

    move-result v2

    .line 2266
    .local v2, "start":I
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultLength()I

    move-result v0

    .line 2267
    .local v0, "len":I
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_4c

    move-object v3, v1

    .line 2268
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 2269
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_4b

    .line 2270
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->replaceWithText(IILjava/lang/String;)V

    .line 2275
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4b
    :goto_4b
    return-void

    .line 2272
    :cond_4c
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4b

    .line 2273
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->replaceWithText(IILjava/lang/String;)V

    goto :goto_4b
.end method
