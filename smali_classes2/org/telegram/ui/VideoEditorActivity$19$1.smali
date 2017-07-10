.class Lorg/telegram/ui/VideoEditorActivity$19$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$19;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$19;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$19;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$19;

    .prologue
    .line 1171
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$19$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$19$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$19;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearRecentHashtags()V

    .line 1175
    return-void
.end method
