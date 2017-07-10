.class Lorg/telegram/ui/DialogsActivity$6;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->initTabs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/DialogsActivity;->dialogsType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 465
    :cond_19
    return-void
.end method
