.class Lorg/telegram/ui/ChatActivity$96;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 10831
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 10834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$96;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 10835
    return-void
.end method
