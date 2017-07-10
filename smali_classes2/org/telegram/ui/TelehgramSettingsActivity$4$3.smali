.class Lorg/telegram/ui/TelehgramSettingsActivity$4$3;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity$4;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/TelehgramSettingsActivity$4;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "paramAnonymous2DialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 561
    if-ltz p2, :cond_41

    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_41

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 565
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v1, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->processSelectedOption(I)V
    invoke-static {v1, v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1100(Lorg/telegram/ui/TelehgramSettingsActivity;I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;->this$1:Lorg/telegram/ui/TelehgramSettingsActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    .line 568
    :cond_41
    return-void
.end method
