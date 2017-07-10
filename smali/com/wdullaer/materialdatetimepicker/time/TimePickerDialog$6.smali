.class Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;
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
    .line 566
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 570
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isAmDisabled()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isPmDisabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 580
    :cond_10
    :goto_10
    return-void

    .line 572
    :cond_11
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    .line 573
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$500(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 574
    .local v0, "amOrPm":I
    if-nez v0, :cond_2d

    .line 575
    const/4 v0, 0x1

    .line 579
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$500(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    goto :goto_10

    .line 576
    :cond_2d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 577
    const/4 v0, 0x0

    goto :goto_23
.end method
