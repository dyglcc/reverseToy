.class public Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;
.super Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;
.source "CaptureActivityAdhoc.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/adhocsdk/editor/zxing/client/android/activity/CaptureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    .prologue
    .line 18
    sget v0, Lcom/adhoc/abtestlite/R$layout;->adhoc_activity_capture:I

    return v0
.end method

.method public getScanContainer()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 28
    sget v0, Lcom/adhoc/abtestlite/R$id;->capture_container:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getScanCropView()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 33
    sget v0, Lcom/adhoc/abtestlite/R$id;->capture_crop_view:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getScanLine()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    sget v0, Lcom/adhoc/abtestlite/R$id;->capture_scan_line:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getScanPreview()Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 23
    sget v0, Lcom/adhoc/abtestlite/R$id;->capture_preview:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    return-object v0
.end method
