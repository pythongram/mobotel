.class Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioSelectActivity$ListAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startedPlayingAudio(Lorg/telegram/messenger/MessageObject;)V
    .registers 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/AudioSelectActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/AudioSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/AudioSelectActivity;

    # setter for: Lorg/telegram/ui/AudioSelectActivity;->playingAudio:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0, p1}, Lorg/telegram/ui/AudioSelectActivity;->access$602(Lorg/telegram/ui/AudioSelectActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 311
    return-void
.end method
