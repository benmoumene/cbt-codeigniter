<!-- MAIN CONTENT-->
<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col">Tambah Soal</div>
                            <div class="col text-right">
                                <a href="<?=base_url()?>admin/list-soal/<?=$id_paket_soal?>" class="btn btn-sm btn-outline-secondary">Kembali</a>
                            </div>
                        </div>
                    </div>
                        <form id="formadd" name="formadd" action="<?php echo base_url(); ?>website/lembaga/Tes_online/submit_add_soal" class="form-soal" method="POST" enctype="multipart/form-data" onsubmit="return(validate_addform());">
                        <input type="hidden" id="csrf-hash-form" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>" style="display: none">
                        <input type="hidden" id="id_paket_soal" name="id_paket_soal" value="<?=$id_paket_soal?>" style="display: none" required>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Nomor Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <input id="no_soal" name="no_soal" type="text" class="form-control" aria-required="true" aria-invalid="false" value="<?=$total_soal+1?>" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Jenis Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <select id="pilihan_jenis_soal" class="form-control selectpicker" data-live-search="true" data-width="auto" name="jenis_soal" required onchange="choosen_exam()">
                                                <?php foreach($jenis_soal as $val_jenis_soal){ ?>
                                                    <option data-tokens="<?=$val_jenis_soal->name?>" value="<?=$val_jenis_soal->id?>"><?=$val_jenis_soal->name?></option>
                                                <?php } ?>
                                            </select>
                                            <small for="jenis_soal" id="jenis_soal_er" class="bg-danger text-white"></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <textarea class="summernote note-math-dialog" id="summernote" name="soal" rows='10'></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Kata Kunci</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <input id="kata_kunci" name="kata_kunci" type="text" class="form-control" aria-required="true" aria-invalid="false" placeholder="Ex : matriks, vector, determinan (Pisahkan dengan tanda koma)">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Tingkat Kesulitan</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <select class="form-control selectpicker" data-live-search="true" data-width="auto" name="tipe_kesulitan" required>
                                                <option value = "-1" selected>Pilih</option>
                                                <?php foreach($tipe_kesulitan as $val_kesulitan){ ?>
                                                    <option data-tokens="<?=$val_kesulitan->name?>" value="<?=$val_kesulitan->id?>"><?=$val_kesulitan->name?></option>
                                                <?php } ?>
                                            </select>
                                            <small for="tipe_kesulitan" id="tipe_kesulitan_er" class="bg-danger text-white"></small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:0.3%">
                                        <h5 class="label-text">Lampiran Audio<br /><small>(Berisi Soal)</small></h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="soal_audio" name="soal_audio">
                                                <label id="file-name" class="custom-file-label" for="soal_audio">Pilih Audio</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php if(!empty($group_soal)){ ?>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Group Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <select class="form-control selectpicker" data-live-search="true" data-width="auto" name="group_soal_id">
                                                <option value="0" selected>Pilih</option>
                                                <?php foreach($group_soal as $val_group){ ?>
                                                    <option data-tokens="<?=$val_group->name_group_soal?>" value="<?=$val_group->id_group_soal?>"><?=$val_group->name_group_soal?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                                <?php if(!empty($bacaan_soal)){ ?>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Bacaan Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <select class="form-control selectpicker" data-live-search="true" data-width="auto" name="bacaan_soal_id">
                                                <option value="0" selected>Pilih</option>
                                                <?php foreach($bacaan_soal as $val_bacaan){ ?>
                                                    <option data-tokens="<?=$val_bacaan->name?>" value="<?=$val_bacaan->id?>"><?=$val_bacaan->name?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:0.3%">
                                        <h5 class="label-text">Acak Soal</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="acak_soal_tidak" name="acak_soal" required value="0" checked>
                                            <label class="custom-control-label" for="acak_soal_tidak">Tidak</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="acak_soal_ya" name="acak_soal" required value="1">
                                            <label class="custom-control-label" for="acak_soal_ya">Ya</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div id="content_acak_jawaban_head" class="col-sm-12 col-lg-3" style="margin-top:0.3%">
                                        <h5 class="label-text">Acak Jawaban</h5>
                                    </div>
                                    <div id="content_acak_jawaban_body" class="col-sm-12 col-lg-9">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="acak_jawaban_tidak" name="acak_jawaban" required value="0" checked>
                                            <label class="custom-control-label" for="acak_jawaban_tidak">Tidak</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" id="acak_jawaban_ya" name="acak_jawaban" required value="1">
                                            <label class="custom-control-label" for="acak_jawaban_ya">Ya</label>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div id="content_jawaban" class="row" style="display:block;">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-responsive">
                                            <thead class="table-primary text-center">
                                                <th>Opsi</th>
                                                <th>Pilih Jawaban</th>
                                                <th>Jawaban</th>
                                                <th width="7%">Skor</th>
                                            </thead>
                                            <tbody>
                                            <?php
                                                $alpha = config_item('_def_opsi_jawaban');
                                                for ($x = 1; $x <= $count_pilihan_ganda; $x++) {
                                            ?>
                                                <tr>
                                                    <td class="text-center font-weight-bold"><?=$alpha++?></td>
                                                    <td class="text-center">
                                                        <div class="form-check">
                                                            <input class="form-check-input position-static" type="radio" name="tanda_jawaban" value="<?=$x?>" id="blankRadio<?=$x?>" required>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="form-group">
                                                            <textarea class="summernote note-math-dialog" id="summernote<?=$x?>" name="jawaban[]" rows='10'></textarea>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="form-group">
                                                            <input id="skor_jawaban<?=$x?>" name="skor_jawaban[]" type="text" class="form-control" aria-required="true" aria-invalid="false" value="0" required>
                                                        </div>
                                                    </td>
                                                </tr>
                                            <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <hr />
                                <div class="row mb-3">
                                    <div class="col-sm-12 text-left">
                                        <h4>Tambahan Pembahasan</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">URL Video</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <input id="url" name="url" type="text" class="form-control" aria-required="true" aria-invalid="false" placeholder="Ex : https://www.youtube.com/watch?v=VpCh53Fierg)">
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-12 col-lg-3" style="margin-top:1%">
                                        <h5 class="label-text">Pembahasan</h5>
                                    </div>
                                    <div class="col-sm-12 col-lg-9">
                                        <div class="form-group">
                                            <textarea class="summernote note-math-dialog" id="summernote" name="pembahasan" rows='10'></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-6 offset-sm-3">
                                        <button type="submit" class="btn btn-md btn-info btn-block">
                                            <i class="fa fa-check fa-md"></i>&nbsp;
                                            <span>Submit</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>