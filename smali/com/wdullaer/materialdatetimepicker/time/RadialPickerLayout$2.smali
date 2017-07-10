.class Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidSelection(I)Z
    .registers 6
    .param p1, "selection"    # I

    .prologue
    const/4 v1, 0x1

    .line 192
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 193
    .local v0, "newTime":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;
    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result v2

    if-nez v2, :cond_27

    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method
