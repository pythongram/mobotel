.class Lorg/telegram/ui/DialogsActivity$24$2$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$24$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$24$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$24$2;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/DialogsActivity$24$2;

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$24$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$24$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1650
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2$1;->this$2:Lorg/telegram/ui/DialogsActivity$24$2;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 1651
    return-void
.end method
