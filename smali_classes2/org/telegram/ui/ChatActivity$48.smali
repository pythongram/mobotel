.class Lorg/telegram/ui/ChatActivity$48;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 3323
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3326
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 3376
    :goto_8
    return-void

    .line 3329
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 3331
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3332
    .local v3, "year":I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3333
    .local v4, "monthOfYear":I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3335
    .local v5, "dayOfMonth":I
    :try_start_29
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$48$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$48$1;-><init>(Lorg/telegram/ui/ChatActivity$48;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 3347
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v7

    .line 3348
    .local v7, "datePicker":Landroid/widget/DatePicker;
    const-wide v10, 0x140372c8800L

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 3349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 3350
    const/4 v1, -0x1

    const-string v2, "JumpToDate"

    const v9, 0x7f0702b2

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3351
    const/4 v1, -0x2

    const-string v2, "Cancel"

    const v9, 0x7f0700fe

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lorg/telegram/ui/ChatActivity$48$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$48$2;-><init>(Lorg/telegram/ui/ChatActivity$48;)V

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_79

    .line 3358
    new-instance v1, Lorg/telegram/ui/ChatActivity$48$3;

    invoke-direct {v1, p0, v7}, Lorg/telegram/ui/ChatActivity$48$3;-><init>(Lorg/telegram/ui/ChatActivity$48;Landroid/widget/DatePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3372
    :cond_79
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_7e} :catch_7f

    goto :goto_8

    .line 3373
    .end local v0    # "dialog":Landroid/app/DatePickerDialog;
    .end local v7    # "datePicker":Landroid/widget/DatePicker;
    :catch_7f
    move-exception v8

    .line 3374
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
