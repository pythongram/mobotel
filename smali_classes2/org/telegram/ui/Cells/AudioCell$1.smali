.class Lorg/telegram/ui/Cells/AudioCell$1;
.super Ljava/lang/Object;
.source "AudioCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AudioCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AudioCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/AudioCell;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/AudioCell;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 63
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 64
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Cells/AudioCell;->setPlayDrawable(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/AudioCell;->access$100(Lorg/telegram/ui/Cells/AudioCell;Z)V

    .line 77
    :cond_39
    :goto_39
    return-void

    .line 67
    :cond_3a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    const/4 v2, 0x1

    # invokes: Lorg/telegram/ui/Cells/AudioCell;->setPlayDrawable(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/AudioCell;->access$100(Lorg/telegram/ui/Cells/AudioCell;Z)V

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->delegate:Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$200(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 72
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->delegate:Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;
    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$200(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    # getter for: Lorg/telegram/ui/Cells/AudioCell;->audioEntry:Lorg/telegram/messenger/MediaController$AudioEntry;
    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;->startedPlayingAudio(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_39
.end method
