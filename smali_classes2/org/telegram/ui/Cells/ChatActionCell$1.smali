.class Lorg/telegram/ui/Cells/ChatActionCell$1;
.super Ljava/lang/Object;
.source "ChatActionCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatActionCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell$1;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell$1;->this$0:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->requestLayout()V

    .line 95
    return-void
.end method
