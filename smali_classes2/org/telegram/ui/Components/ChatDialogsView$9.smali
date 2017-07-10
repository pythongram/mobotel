.class Lorg/telegram/ui/Components/ChatDialogsView$9;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$9;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$302(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z

    .line 304
    return-void
.end method
