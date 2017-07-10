.class Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;
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
    .line 520
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 523
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V
    invoke-static {v0, v1, v3, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->access$100(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;IZZZ)V

    .line 524
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    .line 525
    return-void
.end method
