.class Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V
    .registers 2

    .prologue
    .line 529
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z
    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$200(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z
    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$300(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 533
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    const/4 v1, 0x0

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V
    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$400(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Z)V

    .line 537
    :goto_16
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->notifyOnDateListener()V

    .line 538
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 539
    return-void

    .line 535
    :cond_21
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    goto :goto_16
.end method
