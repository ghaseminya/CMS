package ir.mnm.jcms.service.impl;

import ir.mnm.jcms.domain.Comment;
import ir.mnm.jcms.repository.GenericRepository;
import ir.mnm.jcms.service.CommentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("CommentService")
public class CommentServiceImpl extends AbstractServiceImpl<Comment>
		implements CommentService {

	@Autowired
	public CommentServiceImpl(GenericRepository<Comment, Long> repository) {
		super(repository);
	}

}
